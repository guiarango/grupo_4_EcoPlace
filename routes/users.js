const express = require("express");
const router = express.Router();
const guestMiddleware = require("../middlewares/guestMiddleware");

const usersController = require("../controllers/usersController");
const uploadUserAvatar = require("../middlewares/multerUsersCreationMiddleware");
const validateUserCreation = require("../middlewares/validateUserRegisterMiddleware");
const validateUserLogin = require("../middlewares/validateUserLoginMiddleware");

router.get("/sign_in", guestMiddleware, usersController.signIn);

router.get("/sign_up", guestMiddleware, usersController.signUp);

router.post(
  "/sign_up",
  uploadUserAvatar.single("user_image"),
  validateUserCreation,
  usersController.createUser
);

router.post("/sign_in", validateUserLogin, usersController.loginProcess);

router.get("/shopping_cart", usersController.cart);

router.get("/logOut", usersController.logOut);

//router.get("/users", usersController.users);
// router.delete("/users/:id", usersController.deleteUser);
// router.put("/users/:id",  upload.single("image"),  usersController.updateUserDetail);

module.exports = router;
