//Se importan librerúas
const path = require("path");
const fs = require("fs");
const bcrypt = require("bcryptjs");
const { validationResult } = require("express-validator");

//Se require el modelo de usuarios
const User = require("../models/User");

const usersController = {
  // users: (req, res) => {
  //   res.render("users/users", { users });
  // },

  signIn: (req, res) => {
    res.render("users/sign_in");
  },

  signUp: (req, res) => {
    res.render("users/sign_up");
  },

  cart: (req, res) => {
    res.render("users/shopping_cart");
  },

  // Creacion del usuario por la ruta POST
  createUser: (req, res) => {
    const resultValidation = validationResult(req);

    //Valida si pasan errores de validacion en la creacion del usuario
    if (resultValidation.errors.length > 0) {
      res.render("users/sign_up", {
        errors: resultValidation.mapped(),
        oldData: req.body,
      });
    } else {
      let newUser = req.body;

      //Valida que el email no esté en uso
      let userInDB = User.findByField("email", String(req.body.email));

      if (userInDB) {
        return res.render("users/sign_up", {
          errors: {
            email: { msg: "*Este email ya está en uso" },
          },
          oldData: req.body,
        });
      }

      //Valida que la password coincida con la confirmación de password
      if (newUser.password == newUser.confirmSignUpPassword) {
        delete newUser.confirmSignUpPassword;
        newUser.image = req.file.filename;
        newUser.password = bcrypt.hashSync(req.body.password, 10);
        let userCreated = User.createUser(newUser);

        res.redirect("/");
      } else {
        res.render("users/sign_up", {
          errors: {
            password: { msg: "*Las contraseñas no coinciden" },
            confirmSignUpPassword: { msg: "*Las contraseñas no coinciden" },
          },
          oldData: req.body,
        });
      }
    }
  },

  loginProcess: (req, res) => {
    const resultValidation = validationResult(req);

    //Valida si pasan errores de validacion en la creacion del usuario
    if (resultValidation.errors.length > 0) {
      res.render("users/sign_in", {
        errors: resultValidation.mapped(),
        oldData: req.body,
      });
    } else {
      let userToLogin = User.findByField("email", req.body.email);
      if (userToLogin) {
        let isOKPassword = bcrypt.compareSync(
          req.body.password,
          userToLogin.password
        );
        if (isOKPassword) {
          res.redirect("/");
        } else {
          res.render("users/sign_in", {
            errors: {
              email: {
                msg: "*Favor validar las credenciales",
              },
            },
            oldData: req.body,
          });
        }
      }
    }
  },
};

module.exports = usersController;
