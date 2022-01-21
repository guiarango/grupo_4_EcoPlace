const path = require("path");
const fs = require("fs");

const productFilePath = path.resolve(__dirname, "../data/DB-products.json");
const products = JSON.parse(fs.readFileSync(productFilePath, "utf-8"));

const mainController = {
  home: (req, res) => {
    res.render("home");
  },

  displayProductDetail: (req, res) => {
    const productData = products.find(function (product) {
      return product.id == req.params.id;
    });

    return res.render("products/product_detail", { productData });
  },

  displayCreateProduct: (req, res) => {
    res.render("products/products_create");
  },
  displayEditProduct: (req, res) => {
    const productData = products.find(function (product) {
      return product.id == req.params.id;
    });

    return res.render("products/products_edit", { productData });
  },
  displayProductsList: (req, res) => {
    return res.render("products/products", {
      productsList: products,
    });
  },
  deleteProduct: (req, res) => {
    const dataFiltered = products.filter(function (product) {
      return product.id != req.params.id;
    });

    fs.writeFileSync(productFilePath, JSON.stringify(dataFiltered, null, " "));

    return res.redirect("/");
  },
  signIn: (req, res) => {
    res.render("users/sign_in");
  },
  signUp: (req, res) => {
    res.render("users/sign_up");
  },

  carrito: (req, res) => {
    res.render("users/carrito");
  },
};

module.exports = mainController;
