// SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

// https://solidity-by-example.org/data-locations/
// Variables are declared as:
// - storage: stored on blockchain (expensive)
// - memory: stored in memory; only persists for the function call
// - calldata: function arguments; available for `external` functions only
contract DataLocations {
    uint[] public arr;
    mapping(uint => address) map;
    struct MyStruct {
        uint foo;
    }
    mapping(uint => MyStruct) myStructs;

    function f() public {
        _f(arr, map, myStructs[1]);
        MyStruct storage myStruct = myStructs[1];
        MyStruct memory myMemStruct = MyStruct(0);
    }

    function _f(uint[] storage _arr, mapping(uint => address) storage _map, MyStruct storage _myStruct) internal {
        // do something
    }

    function g(uint[] memory _arry) public returns (uint[] memory) {
        // do something
    }

    function h(uint[] calldata _arr) external {
        // do something
    }
}