using GraphqlApiEsay.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GraphqlApiEsay.Context
{
    public class RestauranteContext: DbContext
    {
        public RestauranteContext(DbContextOptions<RestauranteContext> options) : base(options)
        {

        }

        public DbSet<Plato> Platos { get; set; }
        public DbSet<CarnePescado> CarnePescado { get; set; }
        public DbSet<VerduraFruta> VerduraFrutas { get; set; }
        public DbSet<HarinaCereal> HarinaCereales { get; set; }
        public DbSet<Lacteo> Lacteos { get; set; }
        public DbSet<PlatoIngrediente> PlatoIngredientes { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {

            //Tipos de platos
            #region Platos
            modelBuilder.Entity<Plato>().HasData(
                new Plato
                {
                    Id = 1,
                    NombrePlato = "Canelones con Bechamel"

                },
                new Plato
                {
                    Id = 2,
                    NombrePlato = "Merluza a la romana"
                },
                new Plato
                {
                    Id = 3,
                    NombrePlato = "Filete a la plancha"
                },
                new Plato
                {
                    Id = 4,
                    NombrePlato = "Lentejas con Chorizo"
                }
                );

            #endregion


            //I N G R E D I E N T E S    A L É R G E N O S   Y  N O   A L É R G E N O S 

            //Ingredientes Carnes  - Pescado
            #region Alergenos Carnes - Pescado
            modelBuilder.Entity<CarnePescado>().HasData(
                new CarnePescado
                {
                    Id = 1,
                    NombreCarnePescado = "Pescado",
                    AlergenoCarnePescado = true

                },
                new CarnePescado
                {
                    Id = 2,
                    NombreCarnePescado = "Crustáceos",
                    AlergenoCarnePescado = true
                },
                new CarnePescado
                {
                    Id = 3,
                    NombreCarnePescado = "Filete",
                    AlergenoCarnePescado = false
                },
                new CarnePescado
                {
                    Id = 4,
                    NombreCarnePescado = "Molusco",
                    AlergenoCarnePescado = true
                },
                new CarnePescado
                {
                    Id = 5,
                    NombreCarnePescado = "Chorizo",
                    AlergenoCarnePescado = false
                }, new CarnePescado
                {
                    Id = 6,
                    NombreCarnePescado = "Carne de Cerdo",
                    AlergenoCarnePescado = false
                }
             );
            #endregion

            //Ingredientes Harina - Cereales
            #region Alergenos Harina Cereales

            modelBuilder.Entity<HarinaCereal>().HasData(
               new HarinaCereal
               {
                   Id = 1,
                   NombreHarina = "Gluten",
                   AlergenoHarina = true

               },
               new HarinaCereal
               {
                   Id = 2,
                   NombreHarina = "Harina de trigo",
                   AlergenoHarina = true
               },
               new HarinaCereal
               {
                   Id = 3,
                   NombreHarina = "Cereales",
                   AlergenoHarina = false
               },
               new HarinaCereal
               {
                   Id = 4,
                   NombreHarina = "Pan Rallado",
                   AlergenoHarina = true
               },
               new HarinaCereal
               {
                   Id = 5,
                   NombreHarina = "Harina de trigo sin gluten",
                   AlergenoHarina = false
               }
            );
            #endregion

            //Ingredientes VegetalesFrutas
            #region Alergenos Vegetales - Frutas
            modelBuilder.Entity<VerduraFruta>().HasData(
               new VerduraFruta
               {
                   Id = 1,
                   NombreVerdura = "Soja",
                   AlergenoVerdura = true

               },
               new VerduraFruta
               {
                   Id = 2,
                   NombreVerdura = "Almendras",
                   AlergenoVerdura = true
               },
               new VerduraFruta
               {
                   Id = 3,
                   NombreVerdura = "Avellanas",
                   AlergenoVerdura = true
               },
               new VerduraFruta
               {
                   Id = 4,
                   NombreVerdura = "Apio",
                   AlergenoVerdura = true
               },
               new VerduraFruta
               {
                   Id = 5,
                   NombreVerdura = "Sésamo",
                   AlergenoVerdura = true
               },
               new VerduraFruta
               {
                   Id = 6,
                   NombreVerdura = "Mostaza",
                   AlergenoVerdura = true
               },
                new VerduraFruta
                {
                    Id = 7,
                    NombreVerdura = "Altramuces",
                    AlergenoVerdura = true
                },
                new VerduraFruta
                {
                    Id = 8,
                    NombreVerdura = "Lechuga",
                    AlergenoVerdura = false
                },
                new VerduraFruta
                {
                    Id = 9,
                    NombreVerdura = "Lentejas",
                    AlergenoVerdura = false
                }
            );
            #endregion

            //Ingredientes Lácteos
            #region Ingredientes Lácteos
            modelBuilder.Entity<Lacteo>().HasData(
              new Lacteo
              {
                  Id = 1,
                  NombreLacteo = "Leche",
                  AlergenoLacteo = true

              },
              new Lacteo
              {
                  Id = 2,
                  NombreLacteo = "Huevos",
                  AlergenoLacteo = true
              },
              new Lacteo
              {
                  Id = 3,
                  NombreLacteo = "Yogur",
                  AlergenoLacteo = true
              },
              new Lacteo
              {
                  Id = 4,
                  NombreLacteo = "Leche sin lactosa",
                  AlergenoLacteo = false
              },
              new Lacteo
              {
                  Id = 5,
                  NombreLacteo = "Leche de almendra",
                  AlergenoLacteo = false
              }


           );
            #endregion

            //Crear Fecha
            DateTime fecha = new DateTime(2021, 3, 23);

            // P L A T O S ---- I N G R E D I E N T E S
            #region Platos - Ingredientes

            modelBuilder.Entity<PlatoIngrediente>().HasData(
               new PlatoIngrediente
               {
                   Id = 1,
                   PlatoId = 1,
                   CarneId = 6,
                   VerduraId = null,
                   HarinaId = 2,
                   LacteoId = 2,
                   ModificadoPlato = false,
                   FechaModificado = fecha



               },
               new PlatoIngrediente
               {
                   Id = 2,
                   PlatoId = 2,
                   CarneId = 1,
                   VerduraId = null,
                   HarinaId = 2,
                   LacteoId = 2,
                   ModificadoPlato = false,
                   FechaModificado = fecha
               },
               new PlatoIngrediente
               {
                   Id = 3,
                   PlatoId = 3,
                   CarneId = 6,
                   VerduraId = null,
                   HarinaId = null,
                   LacteoId = null,
                   ModificadoPlato = false,
                   FechaModificado = fecha
               },
               new PlatoIngrediente
               {
                   Id = 4,
                   PlatoId = 4,
                   CarneId = 5,
                   VerduraId = 9,
                   HarinaId = null,
                   LacteoId = null,
                   ModificadoPlato = false,
                   FechaModificado = fecha
               }

            );
            #endregion



        }
    }
}
