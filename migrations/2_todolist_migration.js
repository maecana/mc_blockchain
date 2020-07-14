const TodoList = artifacts.require("TodoList");

module.exports = async deployer => {
  await deployer.deploy(TodoList);
};
