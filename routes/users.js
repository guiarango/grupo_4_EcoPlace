const express = require("express");
const router = express.Router();
const usersController = require("../controllers/usersController");
const path = require("path");
const multer = require("multer");

const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, path.join(__dirname, "../public/uploads/users"));
  },
  filename: function (req, file, cb) {
    cb(
      null,
      `${file.fieldname}_userImg_${Date.now()}${path.extname(
        file.originalname
      )}`
    );
  },
});

const upload = multer({ storage: storage });

router.get("/users", usersController.users);
router.get("/sign_in", usersController.signIn);
router.get("/sign_up", usersController.signUp);
router.get("/carrito", usersController.carrito);
// router.delete("/users/:id", usersController.deleteUser);
router.post("/users", usersController.createUser);
// router.post("/users", upload.single("image"), usersController.createUser);
// router.put("/users/:id",  upload.single("image"),  usersController.updateUserDetail);
module.exports = router;