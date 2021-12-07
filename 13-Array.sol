// SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

// https://solidity-by-example.org/array/
contract Array {
    uint[] public arr;
    uint[] public arr2 = [1, 2, 3];
    uint[10] public myFixedSizeArr; // all 10 elements inialised to `0`

    function get (uint i) public view returns (uint) {
        return arr[i];
    }

    function getArr() public view returns (uint[] memory) {
        // returns the entire array
        // should be avoided for arrays that can grow indefinitely
        return arr;
    }

    function push (uint i) public {
        // append to array
        // increases array length by 1
        arr.push(i);
    }

    function pop () public {
        // return last element from array
        // decreases array length by 1
        arr.pop();
    }

    function getLength () public view returns (uint) {
        return arr.length;
    }

    function remove (uint index) public {
        // delete does not change array length
        delete arr[index];
    }

    function examples () external {
        // only fixed size can be created in memory
        uint[] memory a = new uint[](5);
    }
}

contract ArrayRemoveByShifting {

    uint[] public arr;

    function remove (uint _index) public {
        require(_index < arr.length, "index out of bounds");

        for (uint i = _index ; i < arr.length - 1 ; i++) {
            arr[i] = arr[i + 1];
        }
        arr.pop();
    }

    function test () external {
        arr = [1, 2, 3, 4, 5];
        remove(2);
        assert(arr[0] == 1);
        assert(arr[1] == 2);
        assert(arr[2] == 4);
        assert(arr[3] == 5);
        assert(arr.length == 4);

        arr = [1];
        remove(0);

        assert(arr.length == 0);
    }
}

contract ArrayReplaceFromEnd {
    uint[] public arr;

    function remove (uint index) public {
        arr[index] = arr[arr.length - 1];
        arr.pop();
    }

    function test () public {
        arr = [1, 2, 3, 4];

        // [1, 4, 3] 
        remove(1);
        assert(arr.length == 3);
        assert(arr[0] == 1);
        assert(arr[1] == 4);
        assert(arr[2] == 3);

        remove(2);
        // [1, 4]
        assert(arr.length == 2);
        assert(arr[0] == 1);
        assert(arr[1] == 4);
    }
}