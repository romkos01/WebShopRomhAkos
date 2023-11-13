using Microsoft.EntityFrameworkCore;
using WebShopRomhAkos.Data;
using WebShopRomhAkos.Services;

namespace WebShopRomhAkos
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);
            var loggerFactory = LoggerFactory.Create(loggingBuilder =>
            {
                loggingBuilder
                    .AddFilter("Microsoft.EntityFrameworkCore.Database.Command", LogLevel.Information)
                    .AddConsole();
            });


            // Add DbContext with logging
            builder.Services.AddDbContext<ProductContext>(options =>
                options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection"))
                       .UseLoggerFactory(loggerFactory));

            builder.Services.AddControllersWithViews();

            builder.Services.AddScoped<ProductService>();

            // Building the app
            var app = builder.Build();

            // HTTP configuration
            if (!app.Environment.IsDevelopment())
            {
                app.UseExceptionHandler("/Home/Error");
                app.UseHsts();
            }

            app.UseHttpsRedirection();
            app.UseStaticFiles();

            app.UseRouting();

            app.UseAuthorization();

            app.MapControllerRoute(
                name: "default",
                pattern: "{controller=Home}/{action=Index}/{id?}");

            app.Run();
        }
    }
}