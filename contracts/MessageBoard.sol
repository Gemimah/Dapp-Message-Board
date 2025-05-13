// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MessageBoard {
    string public currentMessage;

    constructor() {
        currentMessage = "Hello, world!";
    }

    event MessageUpdated(string newMessage, address updater);

    function updateMessage(string memory _newMessage) public {
        currentMessage = _newMessage;
        emit MessageUpdated(_newMessage, msg.sender);
    }

    function getMessage() public view returns (string memory) {
        return currentMessage;
    }
}
