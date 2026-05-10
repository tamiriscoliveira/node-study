/*
retornando valores estaticos
export default (app) => {
  app.models.tasks = {
    findAll: (params, callback) => {
      const tasks = [
        {id: 1, title: "Fazer compras"},
        {id: 2, title: "consertar o pc"},
        {id: 3, title: "comprar passagem"},
        {id: 4, title: "ler um capitulo de um livro"}
      ];
      return callback(null, tasks);
    }
  };
};
*/

export default (sequelize, DataTypes) => {
  return sequelize.define("Tasks", {
    title: {
      type: DataTypes.STRING,
      allowNull: false
    },

    done: {
      type: DataTypes.BOOLEAN,
      defaultValue: false
    }
  });
};