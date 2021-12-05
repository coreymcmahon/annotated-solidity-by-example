// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Event {
    // up to 3 parameters can be indexed
    event Log(address indexed sender, string message);
    event AnotherLog();

    function test() public {
        emit Log(msg.sender, "Hello world!");
        emit Log(msg.sender, "Hello EVM!");
        emit AnotherLog();
    }
}