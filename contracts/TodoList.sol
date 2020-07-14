// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.7.0;

contract TodoList {
    uint todoCounter = 0;

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

    mapping(uint => Task) public tasks;

    function createTask(string memory _content) public {
        todoCounter++;

        tasks[todoCounter] = Task(todoCounter, _content, false);
    }
}