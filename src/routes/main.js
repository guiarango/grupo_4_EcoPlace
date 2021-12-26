const express = require("express");
const router = express.Router();
const mainController = require("../controllers/mainController");

router.get("/", mainController.home);
router.get("/carrito", mainController.carrito);
router.get("/product_detail", mainController.product);
router.get("/sign_in", mainController.singIn);
router.get("/sign_up", mainController.singUp)


module.exports = router;