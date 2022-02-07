const path = require("path");
const fs = require("fs");

const productFilePath = path.resolve(__dirname, "../data/DB-products.json");
const products = JSON.parse(fs.readFileSync(productFilePath, "utf-8"));

const usersController = {
    signIn: (req, res) => {
        res.render("users/sign_in");
      },
    
      signUp: (req, res) => {
        res.render("users/sign_up");
      },
    
      carrito: (req, res) => {
        res.render("users/carrito");
      }
}

module.exports = usersController;