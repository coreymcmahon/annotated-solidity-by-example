// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

// https://solidity-by-example.org/mapping/
contract Mapping {
    // Mapping from address to uint
    mapping(address => uint) public myMap;

    function get(address _addr) public view returns (uint) {
        // If the value was never set it always returns the default value
        return myMap[_addr];
    }

    function set (address _addr, uint _i) public {
        myMap[_addr] = _i;
    }

    function remove (address _addr) public {
        // Deleting removes the stored value and resets to the default value (e.g 0 for uint)
        delete myMap[_addr];
    }
}

contract NestedMapping {
    mapping(address => mapping(uint => bool)) public nested;

    function get(address _addr1, uint _i) public view returns (bool) {
        // You can get values from a nested mapping even when it is not initialised
        return nested[_addr1][_i];
    }

    function set(address _addr1, uint _i, bool _bool) public {
        nested[_addr1][_i] = _bool;
    }

    function remove (address _addr1, uint _i) public {
        delete nested[_addr1][_i];
    }
}