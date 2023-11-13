using Microsoft.EntityFrameworkCore;
using WebShopRomhAkos.Models;

namespace WebShopRomhAkos.Data
{
    public partial class ProductContext : DbContext
    {

        public ProductContext(DbContextOptions<ProductContext> options) : base(options)
        {
        }

        //public ProductContext() { }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<SmartphoneModel>()
                .Property(p => p.Price)
                .HasColumnType("decimal(18,2)");
            modelBuilder.Entity<SmartphoneModel>()
                .Property(p => p.ScreenSize)
                .HasColumnType("decimal(18,2)");
        }

        public DbSet<SmartphoneModel> SmartPhone { get; set; }
    }
}
