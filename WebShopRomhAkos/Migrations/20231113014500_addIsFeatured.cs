using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace WebShopRomhAkos.Migrations
{
    /// <inheritdoc />
    public partial class addIsFeatured : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<bool>(
                name: "isFeatured",
                table: "Smartphone",
                type: "bit",
                nullable: false,
                defaultValue: false);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "isFeatured",
                table: "Smartphone");
        }
    }
}
