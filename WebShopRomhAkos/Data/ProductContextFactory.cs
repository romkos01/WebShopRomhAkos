using Microsoft.EntityFrameworkCore.Design;
using Microsoft.EntityFrameworkCore;

namespace WebShopRomhAkos.Data
{
    public class ProductContextFactory : IDesignTimeDbContextFactory<ProductContext>
    {
        public ProductContext CreateDbContext(string[] args)
        {
            IConfigurationRoot configuration = new ConfigurationBuilder()
                .SetBasePath(Directory.GetCurrentDirectory())
                .AddJsonFile("appsettings.json")
                .Build();

            var builder = new DbContextOptionsBuilder<ProductContext>();
            var connectionString = configuration.GetConnectionString("DefaultConnection");
            builder.UseSqlServer(connectionString);

            return new ProductContext(builder.Options);
        }
    }
}
