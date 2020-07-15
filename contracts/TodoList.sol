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
        bool complete;
    }

    event TaskCreated(
        uint id,
        string content,
        bool completed
    );

    function getCounter() external view returns(uint) { return todoCounter;}

    mapping(uint => Task) public tasks;

    function createTask(string memory _content) public {
        todoCounter++;
        tasks[todoCounter] = Task(todoCounter, _content, false);

        emit TaskCreated(todoCounter, _content, false);
    }
}