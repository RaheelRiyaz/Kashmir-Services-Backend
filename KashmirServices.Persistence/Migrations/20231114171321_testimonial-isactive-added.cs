using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace KashmirServices.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class testimonialisactiveadded : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<bool>(
                name: "IsActive",
                table: "Testimonials",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.UpdateData(
                table: "Users",
                keyColumn: "Id",
                keyValue: new Guid("764cbe0e-9b2e-4d95-af49-01b45a0fca5b"),
                columns: new[] { "CreatedBy", "CreatedOn", "UpdatedBy", "UpdatedOn" },
                values: new object[] { new Guid("3a274c2f-6446-4a08-ba94-fee0c737f8a4"), new DateTimeOffset(new DateTime(2023, 11, 14, 22, 43, 20, 875, DateTimeKind.Unspecified).AddTicks(7115), new TimeSpan(0, 5, 30, 0, 0)), new Guid("dafd59b0-5cd9-4eda-b0b3-e35d59139d13"), new DateTimeOffset(new DateTime(2023, 11, 14, 22, 43, 20, 875, DateTimeKind.Unspecified).AddTicks(7142), new TimeSpan(0, 5, 30, 0, 0)) });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "IsActive",
                table: "Testimonials");

            migrationBuilder.UpdateData(
                table: "Users",
                keyColumn: "Id",
                keyValue: new Guid("764cbe0e-9b2e-4d95-af49-01b45a0fca5b"),
                columns: new[] { "CreatedBy", "CreatedOn", "UpdatedBy", "UpdatedOn" },
                values: new object[] { new Guid("9cf6c6a5-70a9-42cb-9fea-efe4d953817c"), new DateTimeOffset(new DateTime(2023, 11, 14, 22, 31, 52, 666, DateTimeKind.Unspecified).AddTicks(7348), new TimeSpan(0, 5, 30, 0, 0)), new Guid("83220c91-4dbb-43a3-bf47-9eb4c2068142"), new DateTimeOffset(new DateTime(2023, 11, 14, 22, 31, 52, 666, DateTimeKind.Unspecified).AddTicks(7375), new TimeSpan(0, 5, 30, 0, 0)) });
        }
    }
}
