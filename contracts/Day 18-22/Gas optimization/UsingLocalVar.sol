// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Bad approach: Unnecessary state updates
contract BadLocalVariables {
    uint256 public total;

    function addNumbers(uint256 a, uint256 b) public {
        total = a + b; // Consumes gas for state update
    }
}

// Good approach: Use local variables for intermediate calculations
contract GoodLocalVariables {
    uint256 public total;

    function addNumbers(uint256 a, uint256 b) public {
        uint256 sum = a + b; // State not updated here, saving gas
        total = sum; // State updated only once, after the calculations
    }
}
