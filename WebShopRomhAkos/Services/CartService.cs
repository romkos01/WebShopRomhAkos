using WebShopRomhAkos.Models;
using Newtonsoft.Json;

namespace WebShopRomhAkos.Services
{
    public class CartService
    {
        private readonly IHttpContextAccessor httpContextAccessor;

        public CartService(IHttpContextAccessor httpContextAccessor)
        {
            this.httpContextAccessor = httpContextAccessor;
        }

        public void UpdateCartCookie(int productId, int quantity)
        {
            // Check is it avaiable the cookie
            if (httpContextAccessor.HttpContext != null)
            {
                // Try to get the "cart" cookie
                httpContextAccessor.HttpContext.Request.Cookies.TryGetValue("cart", out string? cartJson);

                List<CartItem> cartItems = string.IsNullOrEmpty(cartJson)
                                            ? new List<CartItem>()
                                            : JsonConvert.DeserializeObject<List<CartItem>>(cartJson) ?? new List<CartItem>();

                var existingItem = cartItems.FirstOrDefault(ci => ci.ProductId == productId);
                if (existingItem != null)
                {
                    existingItem.Quantity += quantity;
                }
                else
                {
                    cartItems.Add(new CartItem { ProductId = productId, Quantity = quantity });
                }

                // Convert to JSON
                cartJson = JsonConvert.SerializeObject(cartItems);

                // Take back the refreshed cookie
                httpContextAccessor.HttpContext.Response.Cookies.Append("cart", cartJson, new CookieOptions { Path = "/", HttpOnly = true });
            }
            else
            {
                // If HTTPContext not available
                throw new InvalidOperationException("HttpContext is not available.");
            }
        }
    }
}

