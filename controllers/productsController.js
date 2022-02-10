const path = require("path");
const fs = require("fs");

const productFilePath = path.resolve(__dirname, "../data/DB-products.json");
const products = JSON.parse(fs.readFileSync(productFilePath, "utf-8"));

const productsController = {
  displayProductDetail: (req, res) => {
    const productData = products.find(function (product) {
      return product.id == req.params.id;
    });

    return res.render("products/product_detail", { productData });
  },

  displayCreateProduct: (req, res) => {
    res.render("products/products_create");
  },

  createProduct: (req, res) => {
    let newProduct = req.body;
    // newProduct.image = req.file.filename;
    newProduct.color = newProduct.color.replace(/ /g, "").split(",");
    newProduct.id = products[products.length - 1].id + 1;
    products.push(newProduct);
    fs.writeFileSync(productFilePath, JSON.stringify(products, null, " "));

    res.redirect("/products/" + newProduct.id);
  },

  displayEditProduct: (req, res) => {
    const productData = products.find(function (product) {
      return product.id == req.params.id;
    });

    return res.render("products/products_edit", { productData });
  },

  updateProductDetail: (req, res) => {
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
      productFilePath,
      JSON.stringify(productsArrayEdited, null, " ")
    );

    return res.redirect("/products");
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
  }
}

module.exports = productsController;