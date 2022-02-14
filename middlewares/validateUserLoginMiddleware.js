const { body } = require("express-validator");

const validateUserLogin = [
  body("email")
    .notEmpty()
    .withMessage("*Rellena el campo del email")
    .bail()
    .isEmail()
    .withMessage("Debes escribir un formato de correo válido"),
];

module.exports = validateUserLogin;
