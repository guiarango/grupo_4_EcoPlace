const path = require("path");

const mainController = {
  home: (req, res) => {
    res.render("home");
  },
  carrito: (req, res) => {
    res.render("carrito");
  },
  product: (req, res) => {
    res.render("product_detail");
  },
  signIn: (req, res) => {
    res.render("sign_in");
  },
  signUp: (req, res) => {
    res.render("sign_up");
  },
  createProduct: (req, res) => {
    res.render("products_create");
  },
  editProduct: (req, res) => {
    res.render("products_edit");
  },
};

module.exports = mainController;
