// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

// https://solidity-by-example.org/first-app
contract Counter {
    uint public count;

    // view function modifier can be used if the contract doesn't modify the state
    function get() public view returns (uint) {
        return count;
    }

    // Function visibility modifiers:
    //  public - all can access
    //  external - cannot be accessed internally, only externally (can save gas as variables are accessed via calldata)
    //  internal - only this contract and contracts deriving from it can access
    //  private - can be accessed only from this contract
    function inc() public {
        count++;
    }

    function dec() public {
        count--;
    }
}