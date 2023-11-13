using System.ComponentModel.DataAnnotations.Schema;

namespace WebShopRomhAkos.Models

{
    [Table("Smartphone")]
    public class SmartphoneModel
    {
        public int Id { get; set; }
        public string Name { get; set; } = string.Empty;
        public string Description { get; set; } = string.Empty;
        public string Author { get; set; } = string.Empty;
        public string Title { get; set; } = string.Empty;
        public string Brand { get; set; } = string.Empty;
        public decimal Price { get; set; }
        public string ImageUrl { get; set; } = string.Empty;
        public string Category { get; set; } = string.Empty;
        public int Weight { get; set; }
        public string Panel { get; set; } = string.Empty;
        public decimal ScreenSize { get; set; }
        public string DisplayResolution { get; set; } = string.Empty;
        public int RefreshRate { get; set; }
        public int CPUcore { get; set; }
        public int CPUspeed { get; set; }
        public int RAM { get; set; }
        public int StorageSize { get; set; }
        public int MainCameraResolution { get; set; }
        public int BatteryCapacity { get; set; }
        public bool is4G { get; set; }
        public bool is5G { get; set; }
        public bool isNFC { get; set; }
        public bool isUSB_C { get; set; }
        public bool isWaterProof { get; set; }
        public bool isFeatured { get; set; }


        public SmartphoneModel( int Id, string Name, string Description, string Author,
                                string Title, string Brand, decimal Price, string ImageUrl,
                                string Category, int Weight, string Panel, decimal ScreenSize,
                                string DisplayResolution, int RefreshRate,
                                int CPUcore, int CPUspeed, int RAM, int StorageSize,
                                int MainCameraResolution, int BatteryCapacity,
                                bool is4G, bool is5G, bool isNFC, bool isUSB_C, bool isWaterProof,
                                bool isFeatured)
        {
            this.Id = Id;
            this.Name = Name;
            this.Description = Description;
            this.Author = Author;
            this.Title = Title;
            this.Brand = Brand;
            this.Price = Price;
            this.ImageUrl = ImageUrl;
            this.Category = Category;
            this.Weight = Weight;
            this.Panel = Panel;
            this.ScreenSize = ScreenSize;
            this.DisplayResolution = DisplayResolution;
            this.RefreshRate = RefreshRate;
            this.CPUcore = CPUcore;
            this.CPUspeed = CPUspeed;
            this.RAM = RAM;
            this.StorageSize = StorageSize;
            this.MainCameraResolution = MainCameraResolution;
            this.BatteryCapacity = BatteryCapacity;
            this.is4G = is4G;
            this.is5G = is5G;
            this.isNFC = isNFC;
            this.isUSB_C = isUSB_C;
            this.isWaterProof = isWaterProof;
            this.isFeatured = isFeatured;   
        }

    }

}
