using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace KashmirServices.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class testimonialAdd : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Testimonials",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Description = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CustomerId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    CreatedBy = table.Column<Guid>(type: "uniqueidentifier", nullable: true),
                    CreatedOn = table.Column<DateTimeOffset>(type: "datetimeoffset", nullable: false),
                    UpdatedBy = table.Column<Guid>(type: "uniqueidentifier", nullable: true),
                    UpdatedOn = table.Column<DateTimeOffset>(type: "datetimeoffset", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Testimonials", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Testimonials_Users_CustomerId",
                        column: x => x.CustomerId,
                        principalTable: "Users",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.UpdateData(
                table: "Users",
                keyColumn: "Id",
                keyValue: new Guid("764cbe0e-9b2e-4d95-af49-01b45a0fca5b"),
                columns: new[] { "CreatedBy", "CreatedOn", "UpdatedBy", "UpdatedOn" },
                values: new object[] { new Guid("9cf6c6a5-70a9-42cb-9fea-efe4d953817c"), new DateTimeOffset(new DateTime(2023, 11, 14, 22, 31, 52, 666, DateTimeKind.Unspecified).AddTicks(7348), new TimeSpan(0, 5, 30, 0, 0)), new Guid("83220c91-4dbb-43a3-bf47-9eb4c2068142"), new DateTimeOffset(new DateTime(2023, 11, 14, 22, 31, 52, 666, DateTimeKind.Unspecified).AddTicks(7375), new TimeSpan(0, 5, 30, 0, 0)) });

            migrationBuilder.CreateIndex(
                name: "IX_Testimonials_CustomerId",
                table: "Testimonials",
                column: "CustomerId");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Testimonials");

            migrationBuilder.UpdateData(
                table: "Users",
                keyColumn: "Id",
                keyValue: new Guid("764cbe0e-9b2e-4d95-af49-01b45a0fca5b"),
                columns: new[] { "CreatedBy", "CreatedOn", "UpdatedBy", "UpdatedOn" },
                values: new object[] { new Guid("f5ea5b45-4a16-4734-a03e-f226ed7799bc"), new DateTimeOffset(new DateTime(2023, 10, 29, 18, 24, 39, 256, DateTimeKind.Unspecified).AddTicks(7648), new TimeSpan(0, 5, 30, 0, 0)), new Guid("0ae573f0-e772-47b6-a414-41786de9f2e8"), new DateTimeOffset(new DateTime(2023, 10, 29, 18, 24, 39, 256, DateTimeKind.Unspecified).AddTicks(7687), new TimeSpan(0, 5, 30, 0, 0)) });
        }
    }
}
