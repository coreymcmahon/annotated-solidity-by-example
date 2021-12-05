// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

// https://solidity-by-example.org/immutable/
contract Immutable {
    // Immutables cannot be changed outside of the constructor
    // Like constants, the convention is to use upper-case
    address public immutable MY_ADDRESS;
    uint public immutable MY_UINT;

    constructor(uint _myUint) {
        MY_ADDRESS = msg.sender;
        MY_UINT = _myUint;
    }
}