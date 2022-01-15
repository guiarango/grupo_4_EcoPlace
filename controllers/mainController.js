const path = require("path");
const fs = require("fs");

const productFilePath = path.resolve(__dirname, "../data/DB-products.json");
const products = JSON.parse(fs.readFileSync(productFilePath, "utf-8"));


  const mainController = {
    home: (req, res) => {
      res.render("home");
    },
    carrito: (req, res) => {
      res.render("users/carrito");
    },
    product: (req, res) => {
      res.render("products/product_detail");
    },
    signIn: (req, res) => {
      res.render("users/sign_in");
    },
    signUp: (req, res) => {
      res.render("users/sign_up");
    },
    createProduct: (req, res) => {
      res.render("products/products_create");
    },
    editProduct: (req, res) => {
      res.render("products/products_edit");
    },
    productsList: (req, res) => {
      return res.render("products/products", {
        productsList: products,
      });
    }
  };

module.exports = mainController;