// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.7.0;

contract TodoList {
    uint public todoCounter;

    constructor() public {
        createTask('Learn Python');
        createTask('Learn Django');
        createTask('Learn React');
        createTask('Learn Javascript');
        createTask('Learn Solidity');
        createTask('Learn Block Chain');
        createTask('Learn Licensing');
        createTask('Learn Docker');
        createTask('Learn Ganache');
        createTask('Learn Truffle');
        createTask('Learn Gitlab');
        createTask('Learn Crypto-currency');
    }

    struct Task {
        uint id;
        string content;
        bool completed;
    }

    event TaskCreated(
        uint id,
        string content,
        bool completed
    );

    event TaskCompleted(
        uint id,
        bool completed
    );

    function getCounter() external view returns(uint) { return todoCounter;}

    mapping(uint => Task) public tasks;

    function createTask(string memory _content) public {
        todoCounter++;
        tasks[todoCounter] = Task(todoCounter, _content, false);

        emit TaskCreated(todoCounter, _content, false);
    }

    function toggleCompleted(uint _id) public {
        Task memory _task = tasks[_id];
        _task.completed = !_task.completed;
        tasks[_id] = _task;

        emit TaskCompleted(_id, _task.completed);
    }
}