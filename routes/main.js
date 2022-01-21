const express = require("express");
const router = express.Router();
const mainController = require("../controllers/mainController");
const path = require("path");
const multer = require("multer");

const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, path.join(__dirname, "../public/uploads"));
  },
  filename: function (req, file, cb) {
    cb(
      null,
      `${file.fieldname}_img_${Date.now()}${path.extname(file.originalname)}`
    );
  },
});

const upload = multer({ storage: storage });

router.get("/", mainController.home);
router.get("/products", mainController.displayProductsList);
router.get("/products/create", mainController.displayCreateProduct);
router.get("/products/:id", mainController.displayProductDetail);
router.delete("/products/:id", mainController.deleteProduct);
router.get("/products/:id/edit", mainController.displayEditProduct);
// router.post("/products", upload.single(), mainController.createProduct);
// router.put("/products/:id", mainController.displayProductDetail);
router.get("/sign_in", mainController.signIn);
router.get("/sign_up", mainController.signUp);
router.get("/carrito", mainController.carrito);

module.exports = router;
