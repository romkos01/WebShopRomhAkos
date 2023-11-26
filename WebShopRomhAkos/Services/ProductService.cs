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

        public async Task<List<SmartphoneModel>> GetFeaturedSmartphonesAsync()
        {
            return await dbContext.SmartPhone
                                .Where(p => p.IsFeatured)
                                .ToListAsync();
        }

        public async Task<IEnumerable<SmartphoneModel>> GetFilteredProducts(string? searchTerm, decimal? minPrice, decimal? maxPrice,
            decimal? ramSize, decimal? minStorage, decimal? maxStorage, string sortOrder)
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

            //Order by logic
            switch (sortOrder)
            {
                case "price_asc":
                    query = query.OrderBy(p => p.Price);
                    break;
                case "price_desc":
                    query = query.OrderByDescending(p => p.Price);
                    break;
                case "name_asc":
                    query = query.OrderBy(p => p.Name);
                    break;
                case "name_desc":
                    query = query.OrderByDescending(p => p.Name);
                    break;
            }

            return await query.ToListAsync();
        }

        public async Task<decimal> GetMaxPriceAsync()
        {
            return await dbContext.SmartPhone.MaxAsync(p => p.Price);
        }

        public async Task<decimal> GetMinStorageSizeAsync()
        {
            return await dbContext.SmartPhone.MinAsync(p => p.StorageSize);
        }

        public async Task<decimal> GetMaxStorageSizeAsync()
        {
            return await dbContext.SmartPhone.MaxAsync(p => p.StorageSize);
        }

        public async Task<SmartphoneModel?> GetSmartPhoneByIdAsync(int id)
        {
            return await dbContext.SmartPhone.FirstOrDefaultAsync(m => m.Id == id);
        }
    }

}
