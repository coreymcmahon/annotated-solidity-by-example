// SPDX-License-Identifier: MIT
// https://solidity-by-example.org/hello-world/

// Define solidity version to use
// See https://docs.soliditylang.org/
pragma solidity ^0.8.3;

// Defines a smart contract which contains a single data variable
contract Helloworld {

    // Use bytes for arbitrary-length raw byte data and string for arbitrary-length string (UTF-8) data
    string public greetString = "Hell\u00F8 world";
    bytes32 public greetBytes = "Hello world";

    // NOTE: bytes32 uses less gas because it fits in a single word of the EVM, and string is a dynamically sized-type 
    //       which has current limitations in Solidity (such as can't be returned from a function to a contract).
}