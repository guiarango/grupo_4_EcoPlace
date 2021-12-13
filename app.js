//Se importan las líbrerías a utilizar
const express = require("express");
const app = express();
const path = require("path");

// Se deja abierta al público la carpeta public
const publicPath = path.resolve(__dirname, "public");
app.use(express.static(publicPath));

// Se carga el servidor en el localhost:3000
app.listen(3000, () => console.log("Servidor corriendo en puerto 3000"));

//Se utiliza el método GET para acceder al archivo home.html
app.get("/", (req, res) => {
  let newPath = path.resolve(__dirname, "views/home.html");
  res.sendFile(newPath);
});

app.get("/sign_in", (req, res) => {
  let newPath = path.resolve(__dirname, "views/sign_in.html");
  res.sendFile(newPath);
});

app.get("/sign_up", (req, res) => {
  let newPath = path.resolve(__dirname, "views/sign_up.html");
  res.sendFile(newPath);
});

app.get("/product_detail", (req, res) => {
  let newPath = path.resolve(__dirname, "views/product_detail.html");
  res.sendFile(newPath);
});

//Se utiliza el método GET para acceder al archivo carrito.html
app.get("/carrito", (req, res) => {
  let newPath = path.resolve(__dirname, "views/carrito.html");
  res.sendFile(newPath);
});
