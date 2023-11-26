using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
using WebShopRomhAkos.Data;
using WebShopRomhAkos.Models;
using WebShopRomhAkos.Services;

namespace WebShopRomhAkos.Controllers
{
    public class ShoppingCartController : Controller
    {
        private readonly ProductContext context;
        private readonly CartService cartService;

        public ShoppingCartController(ProductContext context, CartService cartService)
        {
            this.context = context;
            this.cartService = cartService;
        }

        [HttpPost]
        public async Task<IActionResult> AddToCart([FromBody] CartItem cartItem)
        {
            var product = await context.SmartPhone.FirstOrDefaultAsync(p => p.Id == cartItem.ProductId);

            if (product == null)
            {
                return NotFound();
            }

            cartService.UpdateCartCookie(cartItem.ProductId, cartItem.Quantity);

            return RedirectToAction("Cart");
        }

        public async Task<IActionResult> Cart()
        {
            string? cartJson = HttpContext.Request.Cookies["cart"];
            var cartItems = string.IsNullOrEmpty(cartJson)
                                ? new List<CartItem>()
                                : JsonConvert.DeserializeObject<List<CartItem>>(cartJson);

            var cartItemDetails = new List<CartItem>();

            if (cartItems != null)
            {
                foreach (var cartItem in cartItems)
                {
                    var product = await context.SmartPhone.FirstOrDefaultAsync(p => p.Id == cartItem.ProductId);
                    cartItemDetails.Add(new CartItem
                    {
                        ProductId = cartItem.ProductId,
                        Quantity = cartItem.Quantity,
                        ProductName = product?.Name ?? "Product not found",
                        ProductPrice = product?.Price ?? 0,
                        ProductImageUrl = product?.ImageUrl ?? "URL not found"
                    });
                }
            }

            return View(cartItemDetails);
        }
    }
}
