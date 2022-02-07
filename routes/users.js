const express = require("express");
const router = express.Router();
const usersController = require("../controllers/usersController");
const path = require("path");
const multer = require("multer");

const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, path.join(__dirname, "../public/uploads"));
  },
  filename: function (req, file, cb) {
    cb(
      null,
      `${file.fieldname}_productimg_${Date.now()}${path.extname(
        file.originalname
      )}`
    );
  },
});

const upload = multer({ storage: storage });

router.get("/sign_in", usersController.signIn);
router.get("/sign_up", usersController.signUp);
router.get("/carrito", usersController.carrito);

module.exports = router;