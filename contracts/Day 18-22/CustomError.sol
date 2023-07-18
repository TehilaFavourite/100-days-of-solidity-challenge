// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

error CustomError(string message);

contract CustomErrorExample {
    uint256 public maxValue = 100;

    function setValue(uint256 newValue) public {
        // Check if the input exceeds the maximum value allowed
        if (newValue > maxValue) {
            revert CustomError("Value exceeds the maximum allowed");
        }

        // Set the new value
        maxValue = newValue;
    }
}
