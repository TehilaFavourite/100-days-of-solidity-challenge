// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract EventExample {
    event NewValue(uint256 indexed newValue);

    uint256 public value;

    function updateValue(uint256 _newValue) public {
        value = _newValue;
        
        emit NewValue(_newValue);
    }
}
