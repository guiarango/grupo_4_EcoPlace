const express = require("express");
const router = express.Router();
const productsController = require("../controllers/productsController");
const uploadProductImage = require("../middlewares/multerProductCreationMiddleware");
// const path = require("path");
// const multer = require("multer");

// const storage = multer.diskStorage({
//   destination: function (req, file, cb) {
//     cb(null, path.join(__dirname, "../public/uploads"));
//   },
//   filename: function (req, file, cb) {
//     cb(
//       null,
//       `${file.fieldname}_productimg_${Date.now()}${path.extname(
//         file.originalname
//       )}`
//     );
//   },
// });

// const upload = multer({ storage: storage });

router.get("/products", productsController.displayProductsList);
router.get("/products/create", productsController.displayCreateProduct);
router.get("/products/:id", productsController.displayProductDetail);
router.delete("/products/:id", productsController.deleteProduct);
router.get("/products/:id/edit", productsController.displayEditProduct);
router.post(
  "/products",
  uploadProductImage.single("product_image"),
  productsController.createProduct
);
router.put(
  "/products/:id",
  uploadProductImage.single("product_image"),
  productsController.updateProductDetail
);

module.exports = router;
