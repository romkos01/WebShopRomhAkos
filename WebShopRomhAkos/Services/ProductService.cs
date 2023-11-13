using WebShopRomhAkos.Data;
using WebShopRomhAkos.Models;
using Microsoft.EntityFrameworkCore;


namespace WebShopRomhAkos.Services
{
    public class ProductService
    {
        private readonly ProductContext dbContext;

        public ProductService(ProductContext dbContext)
        {
            this.dbContext = dbContext;
        }

        public async Task<IEnumerable<SmartphoneModel>> GetFilteredProducts(string? searchTerm, decimal? minPrice, decimal? maxPrice,
            decimal? ramSize, decimal? minStorage, decimal? maxStorage)
        {
            var query = dbContext.SmartPhone.AsQueryable();

            if (!string.IsNullOrEmpty(searchTerm))
            {
                query = query.Where(s => s.Name.Contains(searchTerm) || s.Description.Contains(searchTerm));
            }

            if (minPrice.HasValue)
            {
                query = query.Where(s => s.Price >= minPrice.Value);
            }

            if (maxPrice.HasValue)
            {
                query = query.Where(s => s.Price <= maxPrice.Value);
            }

            if (ramSize.HasValue)
            {
                query = query.Where(s => s.RAM == ramSize.Value);
            }

            if (minStorage.HasValue)
            {
                query = query.Where(s => s.StorageSize >= minStorage.Value);
            }

            if (maxStorage.HasValue)
            {
                query = query.Where(s => s.StorageSize <= maxStorage.Value);
            }

            return await query.ToListAsync();
        }
    }
}
