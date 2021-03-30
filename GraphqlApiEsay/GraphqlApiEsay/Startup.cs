using GraphqlApiEsay.AccesoDatos;
using GraphqlApiEsay.Context;
using GraphqlApiEsay.Repositories;
using HotChocolate;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace GraphqlApiEsay
{
    public class Startup
    {
        private readonly string AllowedOrigin = "allowedOrigin";

        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddDbContext<RestauranteContext>(x => x.UseSqlServer(Configuration.GetConnectionString("DbAlergenosRes")));


            services.AddInMemorySubscriptions();

            services
                .AddRouting()
                .AddGraphQLServer()
                 .AddQueryType<Query>();

             // Me surge fallo de Fetch Data al a�adir la p�gina de mutaci�n y no me cargan los datos.

            // .AddMutationType<Mutation>();

     



            services.AddScoped<PlatosRepository, PlatosRepository>();
            services.AddScoped<IngredientesRepository, IngredientesRepository>();



            services.AddCors(option =>
            {
                option.AddPolicy("allowedOrigin",
                    builder => builder.AllowAnyOrigin().AllowAnyMethod().AllowAnyHeader()
                    );
            });

           

     
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
               
                app.UseDeveloperExceptionPage();
            }

            app.UseCors(AllowedOrigin);
            app.UseWebSockets();
            app.UseRouting();


            app.UseEndpoints(endpoints =>
               {
                   endpoints.MapGraphQL();
               });



        


            
        
        }
    }
}
