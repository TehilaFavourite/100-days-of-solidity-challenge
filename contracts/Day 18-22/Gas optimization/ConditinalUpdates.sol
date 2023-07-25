// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Bad approach: Unnecessary state updates
contract BadConditionalUpdate {
    uint256 public counter;

    function incrementCounter() public {
        counter++; // Consumes gas for state update even if no condition is met
    }
}

// Good approach: Conditionally update state
contract GoodConditionalUpdate {
    uint256 public counter;

    function incrementCounter() public {
        if (msg.sender == owner) {
            counter++; // State updated only if condition is met, saving gas
        }
    }
}
