module.exports = (sequelize, DataTypes) => {
  
    let alias = "Order";
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
      tableName: "order",
      timestamps: false,
    };

  const Order = sequelize.define(alias, cols, config);

  // Order.associate = function(models) {
  //   Order.belongsTo(models.carts, {
  //     as: "carrito",
  //     foreignKey: "cart_id"
  //   });

  //   Order.belongsToMany(models.product, {
  //     as: "productos",
  //     foreignKey: "product_id",
  //     otherKey: "product_price"
  //   });
  // }

  return Order;
};
