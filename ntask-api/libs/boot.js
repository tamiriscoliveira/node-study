export default (app) => {
  app.db.sequelize.sync().then(() => {
    app.listen(app.get("port"), () => {
      console.log(`Servidor rodando na porta ${app.get("port")}`);
    });
  });
};