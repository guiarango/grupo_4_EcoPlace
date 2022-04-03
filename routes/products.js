const express = require("express");
const router = express.Router();
const productsController = require("../controllers/productsController");
const uploadProductImage = require("../middlewares/multerProductCreationMiddleware");
const validateProductCreate = require("../middlewares/validateProductCreate");
const validateProductUpdate = require("../middlewares/validateProductUpdate");


router.get("/products", productsController.displayProductsList);
router.get("/products/create", productsController.displayCreateProduct);
router.get("/products/:id", productsController.displayProductDetail);
router.delete("/products/:id", productsController.deleteProduct);
router.get("/products/:id/edit", productsController.displayEditProduct);
router.post(
  "/products",
  uploadProductImage.single("product_image"),
  validateProductCreate,
  productsController.createProduct

);
router.put(
  "/products/:id",
  uploadProductImage.single("product_image"),
  validateProductUpdate,
  productsController.updateProductDetail
);

module.exports = router;
