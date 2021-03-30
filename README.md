# GraphAlergeno

Back en graphql y asp.net core.

Las herramientas a utilizar son:
-Visual Studio 2019 (Proyecto Asp.Core api 3.1)
-Microsoft SQL Server Management Studio

Primeramente, realicé el proyecto en la versión 2.1 pero tuve que cambiar la versión debido a que existen problemas de compatibilidad al utilizar los Nugets:
-Microsoft.EntityFrameworkCore.
-HotChocolate.AspNetCore
-Microsoft.EntityFrameworkCore.Tool

Al subir el proyecto en la versión 3.1, pude solucionar los problemas de compatibilidad y crear la carpeta models con sus respectivas clases.
Además, desarrollé el DataBaseContext, los repositorios, la clase quey y la clase mutation.

A la hora de configurar el startup, encontré con la problemática de poder arrancar con el Schema Query pero al añadir el Schema Mutation, el servidor local me indicaba un error 500.

Conclusión
En este proyecto pude solventar con facilidad la creación de la base de datos y migrarlo en sql server. Después pude desarrollar las clases query y mutation para realizar las consultas y modificar los datos.
Por último, mi punto a mejorar es configurar el startup ya que, no conseguí averiguar la causa del error 500 en mi servidor local tras introducir esta línea de código (.AddMutationType<Mutation>();) en el método ConfigureServices.
