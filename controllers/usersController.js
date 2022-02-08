const path = require("path");
const fs = require("fs");
const bcrypt = require("bcryptjs");

const usersFilePath = path.resolve(__dirname, "../data/users.json");
const users = JSON.parse(fs.readFileSync(usersFilePath, "utf-8"));

const usersController = {
  users: (req, res) => {
    res.render("users/users", {users} );
  },
    signIn: (req, res) => {
        res.render("users/sign_in");
      },
    
      signUp: (req, res) => {
        res.render("users/sign_up");
      },
    
      carrito: (req, res) => {
        res.render("users/carrito");
      },

      // POST routes
      createUser: (req, res) => {
        
        let newUser = req.body;
        // newUser.image = req.file.filename;
        newUser.image = "default"
        newUser.id = users[users.length - 1].id + 1;
        newUser.password = bcrypt.hashSync(req.body.password, 10);
        
        users.push(newUser);
        fs.writeFileSync(usersFilePath, JSON.stringify(users, null, " "));
        res.send("Se creó el usuario")
        // res.redirect("/users/" + newUsers.id);
      }
      
}

module.exports = usersController;