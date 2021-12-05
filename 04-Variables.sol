// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

// https://solidity-by-example.org/variables/
contract Variables {
    // State variables
    // Stored on the blockchain (more gas, but persist between transactions)
    // In order to write or update a state variable you need to send a transaction. You can read state variables, for free.
    string public text = "Hello";
    uint public num = 123;

    function doSomething() public {
        // Local variables
        // Not saved to the blockchain (less gas, but only available in the current transaction)
        uint i = 456;

        // Globals
        // Information about the blockchain, transaction, caller, etc.
        // See: https://docs.soliditylang.org/en/v0.8.10/cheatsheet.html?highlight=global#global-variables
        uint timestamp = block.timestamp;
        address sender = msg.sender;
    }
}