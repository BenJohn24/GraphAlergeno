using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace GraphqlApiEsay.Migrations
{
    public partial class CrateDataBaseAlergeno : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "CarnePescado",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    NombreCarnePescado = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    AlergenoCarnePescado = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CarnePescado", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "HarinaCereales",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    NombreHarina = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    AlergenoHarina = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_HarinaCereales", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Lacteos",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    NombreLacteo = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    AlergenoLacteo = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Lacteos", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Platos",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    NombrePlato = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Platos", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "VerduraFrutas",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    NombreVerdura = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    AlergenoVerdura = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_VerduraFrutas", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "PlatoIngredientes",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    PlatoId = table.Column<int>(type: "int", nullable: false),
                    CarneId = table.Column<int>(type: "int", nullable: true),
                    VerduraId = table.Column<int>(type: "int", nullable: true),
                    HarinaId = table.Column<int>(type: "int", nullable: true),
                    LacteoId = table.Column<int>(type: "int", nullable: true),
                    ModificadoPlato = table.Column<bool>(type: "bit", nullable: false),
                    FechaModificado = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PlatoIngredientes", x => x.Id);
                    table.ForeignKey(
                        name: "FK_PlatoIngredientes_CarnePescado_CarneId",
                        column: x => x.CarneId,
                        principalTable: "CarnePescado",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_PlatoIngredientes_HarinaCereales_HarinaId",
                        column: x => x.HarinaId,
                        principalTable: "HarinaCereales",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_PlatoIngredientes_Lacteos_LacteoId",
                        column: x => x.LacteoId,
                        principalTable: "Lacteos",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_PlatoIngredientes_Platos_PlatoId",
                        column: x => x.PlatoId,
                        principalTable: "Platos",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_PlatoIngredientes_VerduraFrutas_VerduraId",
                        column: x => x.VerduraId,
                        principalTable: "VerduraFrutas",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.InsertData(
                table: "CarnePescado",
                columns: new[] { "Id", "AlergenoCarnePescado", "NombreCarnePescado" },
                values: new object[,]
                {
                    { 1, true, "Pescado" },
                    { 2, true, "Crustáceos" },
                    { 3, false, "Filete" },
                    { 4, true, "Molusco" },
                    { 5, false, "Chorizo" },
                    { 6, false, "Carne de Cerdo" }
                });

            migrationBuilder.InsertData(
                table: "HarinaCereales",
                columns: new[] { "Id", "AlergenoHarina", "NombreHarina" },
                values: new object[,]
                {
                    { 1, true, "Gluten" },
                    { 2, true, "Harina de trigo" },
                    { 3, false, "Cereales" },
                    { 4, true, "Pan Rallado" },
                    { 5, false, "Harina de trigo sin gluten" }
                });

            migrationBuilder.InsertData(
                table: "Lacteos",
                columns: new[] { "Id", "AlergenoLacteo", "NombreLacteo" },
                values: new object[,]
                {
                    { 5, false, "Leche de almendra" },
                    { 3, true, "Yogur" },
                    { 4, false, "Leche sin lactosa" },
                    { 1, true, "Leche" },
                    { 2, true, "Huevos" }
                });

            migrationBuilder.InsertData(
                table: "Platos",
                columns: new[] { "Id", "NombrePlato" },
                values: new object[,]
                {
                    { 1, "Canelones con Bechamel" },
                    { 2, "Merluza a la romana" },
                    { 3, "Filete a la plancha" },
                    { 4, "Lentejas con Chorizo" }
                });

            migrationBuilder.InsertData(
                table: "VerduraFrutas",
                columns: new[] { "Id", "AlergenoVerdura", "NombreVerdura" },
                values: new object[,]
                {
                    { 8, false, "Lechuga" },
                    { 1, true, "Soja" },
                    { 2, true, "Almendras" },
                    { 3, true, "Avellanas" },
                    { 4, true, "Apio" },
                    { 5, true, "Sésamo" },
                    { 6, true, "Mostaza" },
                    { 7, true, "Altramuces" },
                    { 9, false, "Lentejas" }
                });

            migrationBuilder.InsertData(
                table: "PlatoIngredientes",
                columns: new[] { "Id", "CarneId", "FechaModificado", "HarinaId", "LacteoId", "ModificadoPlato", "PlatoId", "VerduraId" },
                values: new object[,]
                {
                    { 1, 6, new DateTime(2021, 3, 23, 0, 0, 0, 0, DateTimeKind.Unspecified), 2, 2, false, 1, null },
                    { 2, 1, new DateTime(2021, 3, 23, 0, 0, 0, 0, DateTimeKind.Unspecified), 2, 2, false, 2, null },
                    { 3, 6, new DateTime(2021, 3, 23, 0, 0, 0, 0, DateTimeKind.Unspecified), null, null, false, 3, null },
                    { 4, 5, new DateTime(2021, 3, 23, 0, 0, 0, 0, DateTimeKind.Unspecified), null, null, false, 4, 9 }
                });

            migrationBuilder.CreateIndex(
                name: "IX_PlatoIngredientes_CarneId",
                table: "PlatoIngredientes",
                column: "CarneId");

            migrationBuilder.CreateIndex(
                name: "IX_PlatoIngredientes_HarinaId",
                table: "PlatoIngredientes",
                column: "HarinaId");

            migrationBuilder.CreateIndex(
                name: "IX_PlatoIngredientes_LacteoId",
                table: "PlatoIngredientes",
                column: "LacteoId");

            migrationBuilder.CreateIndex(
                name: "IX_PlatoIngredientes_PlatoId",
                table: "PlatoIngredientes",
                column: "PlatoId");

            migrationBuilder.CreateIndex(
                name: "IX_PlatoIngredientes_VerduraId",
                table: "PlatoIngredientes",
                column: "VerduraId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "PlatoIngredientes");

            migrationBuilder.DropTable(
                name: "CarnePescado");

            migrationBuilder.DropTable(
                name: "HarinaCereales");

            migrationBuilder.DropTable(
                name: "Lacteos");

            migrationBuilder.DropTable(
                name: "Platos");

            migrationBuilder.DropTable(
                name: "VerduraFrutas");
        }
    }
}
