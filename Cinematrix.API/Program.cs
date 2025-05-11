using Cinematrix.API.Datos;
using Microsoft.EntityFrameworkCore;
using System.Text.Json.Serialization;

var builder = WebApplication.CreateBuilder(args);

var cadenaDeConexion = builder.Configuration.GetValue<string>("DefaultConnection");

//Inicio del �rea de servicios

builder.Services.AddAutoMapper(typeof(Program));

builder.Services.AddControllers().AddJsonOptions(opciones => opciones.JsonSerializerOptions.ReferenceHandler = ReferenceHandler.IgnoreCycles);

builder.Services.AddDbContext<CinematrixContext>(opciones => opciones.UseSqlServer("name=DefaultConnection"));



//Fin del �rea del servicios



var app = builder.Build();


//Inicio del �rea de los middlewares

app.MapControllers();

//Fin del �rea de los middlewares



app.Run();
