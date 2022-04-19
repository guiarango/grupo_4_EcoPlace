const express = require("express");
const {Product, Categories} = require("../../database/models");

module.exports = {
    show: async (req, res) => {
        const products = await Product.findAll();
        return res.json({
            total: products.length,
            products: products
        })
    },
    productDetail: async (req, res) => {
        const product = await Product.findByPk(req.params.id)
        return res.status(200).json({
            data: product,
            imageUrl:'https://localhost:3000/public/uploads/products/${data.image}'})
    },
    countByCategories: async (req, res) => {
        const category = await Categories.findAll({
            include: ["productos"]
        });
        const newCategory = category.map(category => {
            return {
                [category.category_name]: category.productos.length
            }
        })
        return res.json(newCategory)
    }
}