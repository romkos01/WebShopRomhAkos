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
        public bool Is4G { get; set; }
        public bool Is5G { get; set; }
        public bool IsNFC { get; set; }
        public bool IsUSB_C { get; set; }
        public bool IsWaterProof { get; set; }
        public bool IsFeatured { get; set; }


        public SmartphoneModel( int Id, string Name, string Description, string Author,
                                string Title, string Brand, decimal Price, string ImageUrl,
                                string Category, int Weight, string Panel, decimal ScreenSize,
                                string DisplayResolution, int RefreshRate,
                                int CPUcore, int CPUspeed, int RAM, int StorageSize,
                                int MainCameraResolution, int BatteryCapacity,
                                bool Is4G, bool Is5G, bool IsNFC, bool IsUSB_C, bool IsWaterProof,
                                bool IsFeatured)
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
            this.Is4G = Is4G;
            this.Is5G = Is5G;
            this.IsNFC = IsNFC;
            this.IsUSB_C = IsUSB_C;
            this.IsWaterProof = IsWaterProof;
            this.IsFeatured = IsFeatured;   
        }

    }

}
