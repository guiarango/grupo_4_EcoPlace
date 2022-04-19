const express = require("express");
const {
    Usuarios
} = require("../../database/models")

module.exports = {
    userList: async (req, res) => {
        const users = await Usuarios.findAll()
        return res.json({
            total: users.length,
            users: users.map(users => {
                delete users.dataValues.user_password
                delete users.dataValues.createdAt
                delete users.dataValues.deletedAt
                delete users.dataValues.updatedAt
                return users
            }),

            status: 200
        })
    },
    userDetail: async (req, res) => {
        const user = await Usuarios.findByPk(req.params.id)
        delete user.dataValues.user_password
        delete user.dataValues.user_image
        return res.status(200).json({
            data: user,
            imageURL: 'https://localhost:3000/public/uploads/users/${data.image}'
        })
    }
}