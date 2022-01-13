const express = require("express");
const router = express.Router();
const mainController = require("../controllers/mainController");

router.get("/", mainController.home);
router.get("/carrito", mainController.carrito);
router.get("/product_detail", mainController.product);
router.get("/sign_in", mainController.signIn);
router.get("/sign_up", mainController.signUp);
router.get("/products_create", mainController.createProduct);
router.get("/products_edit", mainController.editProduct);
router.get("/products", mainController.productsList);

module.exports = router;
