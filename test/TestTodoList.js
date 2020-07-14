const { assert } = require("chai");

const tl = artifacts.require('TodoList');

contract('Todolist', async accounts => {

    it("Should have given me the number of tasks", async () => {
        let todolist = await tl.new();
        console.log(todolist.address);
        let taskCounter = await todolist.getCounter();
        assert.equal(Number(taskCounter), 12);
        taskCounter = await todolist.todoCounter();
        assert.equal(Number(taskCounter), 12);
    });
})