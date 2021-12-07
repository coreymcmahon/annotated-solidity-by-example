// SPDX-License-Identifier: MIT

// Define solidity version to use
// See https://docs.soliditylang.org/
pragma solidity ^0.8.3;

// https://solidity-by-example.org/hello-world/
// Defines a smart contract which contains some data variables
contract Helloworld {

    // Use bytes for arbitrary-length raw byte data and string for arbitrary-length string (UTF-8) data
    string public greetString = "Hell\u00F8 world";
    bytes32 public greetBytes = "Hello world";

    // NOTE: bytes32 uses less gas because it fits in a single word of the EVM, and string is a dynamically sized-type 
    //       which has current limitations in Solidity.
}