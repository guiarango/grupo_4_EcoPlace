const path = require("path");

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
};

module.exports = mainController;
