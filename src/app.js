//Se importan las líbrerías a utilizar
const express = require("express");
const app = express();
const path = require("path");
const homeRoute = require("./routes/main");

// Se deja abierta al público la carpeta public
const publicPath = path.resolve(__dirname, "../public");
app.use(express.static(publicPath));

// Se carga el servidor en el localhost:3000
app.listen(3000, () => console.log("Servidor corriendo en puerto 3000"));

// Motor de plantillas
app.set("view engine", "ejs");

// routes
app.use(homeRoute);
