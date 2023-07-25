// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Contract with batch update and separate state updates examples
contract StateUpdateExample {
    uint256 public var1;
    uint256 public var2;
    uint256 public var3;

    // Batch update: Set multiple state variables in a single transaction
    function batchUpdate(
        uint256 newValue1,
        uint256 newValue2,
        uint256 newValue3
    ) public {
        var1 = newValue1;
        var2 = newValue2;
        var3 = newValue3;
    }

    // Separate state updates: Set state variables individually in separate transactions
    function separateUpdate1(uint256 newValue) public {
        var1 = newValue;
    }

    function separateUpdate2(uint256 newValue) public {
        var2 = newValue;
    }

    function separateUpdate3(uint256 newValue) public {
        var3 = newValue;
    }
}
