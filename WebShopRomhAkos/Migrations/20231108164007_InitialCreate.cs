using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace WebShopRomhAkos.Migrations
{
    /// <inheritdoc />
    public partial class InitialCreate : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Smartphone",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Description = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Author = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Title = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Brand = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Price = table.Column<decimal>(type: "decimal(18,2)", nullable: false),
                    ImageUrl = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Category = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Weight = table.Column<int>(type: "int", nullable: false),
                    Panel = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    ScreenSize = table.Column<decimal>(type: "decimal(18,2)", nullable: false),
                    DisplayResolution = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    RefreshRate = table.Column<int>(type: "int", nullable: false),
                    CPUcore = table.Column<int>(type: "int", nullable: false),
                    CPUspeed = table.Column<int>(type: "int", nullable: false),
                    RAM = table.Column<int>(type: "int", nullable: false),
                    StorageSize = table.Column<int>(type: "int", nullable: false),
                    MainCameraResolution = table.Column<int>(type: "int", nullable: false),
                    BatteryCapacity = table.Column<int>(type: "int", nullable: false),
                    is4G = table.Column<bool>(type: "bit", nullable: false),
                    is5G = table.Column<bool>(type: "bit", nullable: false),
                    isNFC = table.Column<bool>(type: "bit", nullable: false),
                    isUSBC = table.Column<bool>(name: "isUSB_C", type: "bit", nullable: false),
                    isWaterProof = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Smartphone", x => x.Id);
                });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Smartphone");
        }
    }
}
