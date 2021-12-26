const path = require("path");

const mainController = {
    home: (req, res) => {
        res.render("home")
    },
    carrito: (req, res) => {
        res.render("carrito")
    },
    product: (req, res) => {
        res.render("product_detail")
    },
    singIn: (req, res) => {
        res.render("sign_in")
    },
    singUp: (req, res) => {
        res.render("sign_up")
    }


};



module.exports = mainController;