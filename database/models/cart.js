module.exports = (Sequelize, DataTypes) => {
    let alias = "Carts";

    let cols = {
        cart_id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        cart_name:{
            type: DataTypes.STRING
        }
    };
    let config = {
        tableName: "carts",
        timestamp: false 
    };

    const Carts = sequelize.define(alias, cols, config);

    return Carts;
}