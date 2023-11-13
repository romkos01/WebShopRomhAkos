using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using WebShopRomhAkos.Data;
using WebShopRomhAkos.Models;
using Microsoft.EntityFrameworkCore;


namespace WebShopRomhAkos.Controllers
{
    public class HomeController : Controller
    {
        private readonly ProductContext productcontext;

        public HomeController(ProductContext productcontext)
        {
            this.productcontext = productcontext;
        }

        public async Task<ActionResult> Index()
        {
            var featuredProducts = await productcontext.SmartPhone
                                        .Where(p => p.isFeatured)
                                        .ToListAsync();
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