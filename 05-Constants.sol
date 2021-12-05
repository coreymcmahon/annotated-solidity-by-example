// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

// https://solidity-by-example.org/constants
contract Constants {
    // Constants use less gas (but obviously cannot be changed)
    // Convention is to use upper-case to define constants
    address public constant MY_ADDRESS = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
    uint public constant MY_UNIT = 123;
}