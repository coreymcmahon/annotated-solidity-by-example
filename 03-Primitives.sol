// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

// https://solidity-by-example.org/primitives
contract Primitives {
    // boolean, true or false.
    bool public book = true;
    // 8 bit unsigned integer.
    uint8 public u8 = 1;
    // 256 bit unsigned integer.
    uint public u256 = 456;
    // uint is an alias for uint256
    uint public u = 123;

    // signed integers
    int8 public i7 = -1;
    int public i256 = 456;
    // int is same as int256
    int public i = -123;

    // min and max integer values (obviously different based on the size of the integer)
    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    // 42-character hexadecimal address derived from the last 20 bytes of the public key
    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;

    bool public defaultBoo; // defaults to false
    uint public defaultUint; // defaults to 0
    int public defaultInt; // defaults to 0
    address public defaultAddr; // defaults to the empty/null address 0x0
}