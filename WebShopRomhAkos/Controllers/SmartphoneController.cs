using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebShopRomhAkos.Data;
using WebShopRomhAkos.Services;

namespace WebShopRomhAkos.Controllers
{
    public class SmartphoneController : Controller
    {

        private readonly ProductContext context;
        private readonly ProductService productService;


        public SmartphoneController(ProductContext context,ProductService productService)
        {
            this.context = context;
            this.productService = productService;
        }



        public async Task<IActionResult> Index(string? searchTerm, decimal? minPrice, decimal? maxPrice,
            decimal? ramSize, decimal? minStorage, decimal? maxStorage)
        {
            var maxPriceInDb = context.SmartPhone.Max(p => p.Price);
            ViewBag.MaxPriceInDb = Math.Round(maxPriceInDb);

            var minStorageInDb = context.SmartPhone.Min(p => p.StorageSize);
            ViewBag.MinStorageInDb = minStorageInDb;

            var maxStorageInDb = context.SmartPhone.Max(p => p.StorageSize);
            ViewBag.MaxStorageInDb = maxStorageInDb;
            var filteredProducts = await productService.GetFilteredProducts(searchTerm, minPrice, maxPrice, ramSize, minStorage, maxStorage);

            return View(filteredProducts);
        }



        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }
            
            var product = await context.SmartPhone
                .FirstOrDefaultAsync(m => m.Id == id);
            if (product == null)
            {
                return NotFound();
            }

            return View(product);
        }

}

}
