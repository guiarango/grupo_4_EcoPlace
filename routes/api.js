const express = require("express");
const router = express.Router();

const apiUsersController = require('../controllers/api/userController.js')
const apiProductsControllers = require('../controllers/api/productController.js');

router.get('/products/', apiProductsControllers.show); 

router.get("/products/category", apiProductsControllers.countByCategories) 

router.get('/products/:id', apiProductsControllers.productDetail); 

router.get('/users', apiUsersController.userList);

router.get('/users/:id', apiUsersController.userDetail);

module.exports = router;