module.exports = (sequelize, DataTypes) => {
  
    let alias = "CartProduct";
    let cols = {
      product_id:{
          type: DataTypes.NUMBER
      },
      cart_id:{
          type: DataTypes.NUMBER
      },
      product_price:{
          type: DataTypes.FLOAT
      },
      product_quantity:{
          type: DataTypes.NUMBER
      }
    }
    let config = {
      tableName: "cartproduct",
      timestamps: false,
    };

  const CartProduct = sequelize.define(alias, cols, config);

  return CartProduct;
};
