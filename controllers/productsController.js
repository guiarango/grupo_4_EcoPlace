const path = require("path");
const fs = require("fs");

const Product = require("../models/Product");

// const productFilePath = path.resolve(__dirname, "../data/DB-products.json");
// const products = JSON.parse(fs.readFileSync(productFilePath, "utf-8"));

const productsController = {
  //Se despliega el detalle del producto
  displayProductDetail: (req, res) => {
    const productData = Product.findByPk(req.params.id);
    return res.render("products/product_detail", { productData });
  },

  //Se despliega la pantalla de creación de producto
  displayCreateProduct: (req, res) => {
    res.render("products/products_create");
  },

  //Se crea el producto
  createProduct: (req, res) => {
    let newProduct = req.body;
    newProduct.image = req.file.filename;
    newProduct.color = newProduct.color.replace(/ /g, "").split(",");
    newProduct = Product.createProduct(newProduct);

    res.redirect("/products/" + newProduct.id);
  },

  //Se despliega la edición del producto
  displayEditProduct: (req, res) => {
    const productData = Product.findByPk(req.params.id);
    return res.render("products/products_edit", { productData });
  },

  //Se actualiza un producto ya existente
  updateProductDetail: (req, res) => {
    const products = Product.findAll();
    const id = Number(req.params.id);
    const productsArrayEdited = products.map((oneProduct) => {
      if (oneProduct.id === id) {
        return {
          id: id,
          ...req.body,
          image: req.file ? req.file.filename : oneProduct.image,
        };
      }
      return oneProduct;
    });

    fs.writeFileSync(
      path.resolve(__dirname, "../data/DN-products.json"),
      JSON.stringify(productsArrayEdited, null, " ")
    );

    return res.redirect("/products");
  },

  //Se despliega la lista completa de productos
  displayProductsList: (req, res) => {
    products = Product.findAll();
    return res.render("products/products", {
      productsList: products,
    });
  },

  //Se borra el producto
  deleteProduct: (req, res) => {
    Product.deleteProduct(req.params.id);

    return res.redirect("/");
  },
};

module.exports = productsController;
