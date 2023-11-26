using Microsoft.AspNetCore.Mvc;
using WebShopRomhAkos.Services;

namespace WebShopRomhAkos.Controllers
{
    public class SmartphoneController : Controller
    {
        private readonly ProductService productService;

        public SmartphoneController(ProductService productService)
        {
            this.productService = productService;
        }

        public async Task<IActionResult> Index(string? searchTerm, decimal? minPrice, decimal? maxPrice, decimal? ramSize, decimal? minStorage, decimal? maxStorage, string sortOrder)
        {
            ViewBag.MaxPriceInDb = Math.Round(await productService.GetMaxPriceAsync());
            ViewBag.MinStorageInDb = await productService.GetMinStorageSizeAsync();
            ViewBag.MaxStorageInDb = await productService.GetMaxStorageSizeAsync();

            var filteredProducts = await productService.GetFilteredProducts(searchTerm, minPrice, maxPrice, ramSize, minStorage, maxStorage, sortOrder);


            return View(filteredProducts);
        }

        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var product = await productService.GetSmartPhoneByIdAsync(id.Value);
            if (product == null)
            {
                return NotFound();
            }

            return View(product);
        }
    }


}
