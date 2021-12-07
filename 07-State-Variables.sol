// SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

// https://solidity-by-example.org/state-variables/
contract StateVariables {
    uint public num;

    // Use underscore to prevent name collision with state variables
    function set(uint _num) public {
        num = _num;
    }

    function get() public view returns (uint) {
        return num;
    }
}