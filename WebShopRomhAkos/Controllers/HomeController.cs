using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using WebShopRomhAkos.Models;
using WebShopRomhAkos.Services;


namespace WebShopRomhAkos.Controllers
{
    public class HomeController : Controller
    {
        private readonly ProductService productService;

        public HomeController(ProductService productService)
        {
            this.productService = productService;
        }

        public async Task<ActionResult> Index()
        {
            var featuredProducts = await productService.GetFeaturedSmartphonesAsync();
            return View(featuredProducts);
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}