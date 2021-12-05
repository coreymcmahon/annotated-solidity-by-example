// SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

// https://solidity-by-example.org/gas
// Each transaction on the Ethereum VM costs: `gas spent * gas price = (X) ether`
// Higher gas price == higher priority to be included in a block. Unspent gas is refunded.
// There are 2 upper bounds to the amount of gas you can spend: `gas limit` and `block gas limit`.
contract Gas {
    uint public i = 0;

    // The following will use up all of the gas (up to your `gas limit`) and then revert (no state changes).
    function infiniteLoop() public {
        while (true) {
            i++;
        }
    }
}