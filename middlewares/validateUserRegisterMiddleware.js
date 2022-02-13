const { body } = require("express-validator");
const path = require("path");

const validateUserCreation = [
  body("Username")
    .notEmpty()
    .withMessage("*Rellena el campo de nombre de usuario")
    .bail()
    .isLength({ min: 5, max: 20 })
    .withMessage(
      "El nombre de usuario debe contener mínimo 5 caracteres y máximo 20 caracteres"
    ),
  body("email")
    .notEmpty()
    .withMessage("*Rellena el campo del email")
    .bail()
    .isEmail()
    .withMessage("Debes escribir un formato de correo válido"),
  body("password")
    .notEmpty()
    .withMessage("*Rellena el campo de contraseña")
    .bail()
    .isLength({ min: 4, max: 20 })
    .withMessage(
      "La contraseña debe contener mínimo 4 caracteres y máximo 20 caracteres"
    ),
  body("confirmSignUpPassword")
    .notEmpty()
    .withMessage("*Rellena el campo de la contraseña nuevamente")
    .bail()
    .isLength({ min: 4, max: 20 })
    .withMessage(
      "La contraseña debe contener mínimo 4 caracteres y máximo 20 caracteres"
    ),
  body("avatar").custom((value, { req }) => {
    let file = req.file;

    let acceptedExtensions = [".jpg", ".PNG"];
    if (!file) {
      throw new Error("*Se debe subir una imagen");
    } else {
      let fileExtension = path.extname(file.originalname);
      if (!acceptedExtensions.includes(fileExtension)) {
        throw new Error(
          `*Las extensiones de archivo son: ${acceptedExtensions.join(", ")}`
        );
      }
    }

    return true;
  }),
];

module.exports = validateUserCreation;
