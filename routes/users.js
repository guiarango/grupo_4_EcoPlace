const express = require("express");
const router = express.Router();

const usersController = require("../controllers/usersController");
const uploadUserAvatar = require("../middlewares/multerUsersCreationMiddleware");
const validateUserCreation = require("../middlewares/validateUserRegisterMiddleware");

router.get("/sign_in", usersController.signIn);

router.get("/sign_up", usersController.signUp);

router.post(
  "/sign_up",
  uploadUserAvatar.single("avatarImg"),
  validateUserCreation,
  usersController.createUser
);

router.get("/carrito", usersController.carrito);

//router.get("/users", usersController.users);
// router.delete("/users/:id", usersController.deleteUser);
// router.put("/users/:id",  upload.single("image"),  usersController.updateUserDetail);

module.exports = router;
