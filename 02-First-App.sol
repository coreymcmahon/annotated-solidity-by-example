// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract Counter {
    uint public count;

    // view function modifier can be used if the contract doesn't modify the state
    function get() public view returns (uint) {
        return count;
    }

    function inc() public {
        count++;
    }

    function dec() public {
        count--;
    }
}