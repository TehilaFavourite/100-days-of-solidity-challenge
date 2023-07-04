// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EventExample {
    uint256 public data;

    event DataUpdated(uint256 newValue);
    event DataMultiplied(uint256 oldValue, uint256 factor, uint256 newValue);

    function updateData(uint256 newValue) public {
        data = newValue;
        emit DataUpdated(newValue);
    }

    function multiplyData(uint256 factor) public {
        uint256 oldValue = data;
        data = data * factor;
        emit DataMultiplied(oldValue, factor, data);
    }
}
