// SPDX-License-Identifier: MIT

// https://solidity-by-example.org/if-else/
contract IfElse {
    // Pure function only relies on the input parameters and doesn't read or modify state
    // NOTE: pure functions can use revert() and require()
    function foo (uint x) public pure returns (uint) {
        if (x < 10) {
            return 1;
        } else {
            return 2;
        }
    }

    function ternaryFoo (uint _x) public pure returns (uint) {
        // Same behaviour as above
        return _x < 10 ? 1 : 2;
    }
}