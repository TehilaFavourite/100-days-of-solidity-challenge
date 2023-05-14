// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.19;

contract Demo {

    event LogDetail(uint256 _number, address indexed caller, uint256 time);

    uint256 public number;

    modifier validNumber(uint256 _myNumber) {
        require(_myNumber > 0, "invalid number");
        _;
    }

    function setMyNumber(uint256 _myNumber) external validNumber(_myNumber) {
        number = _myNumber;

        emit LogDetail(_myNumber, msg.sender, block.timestamp);
    }

    function setMyNumber(uint256 _myNumber, address caller) external validNumber(_myNumber) {
        number = _myNumber;
        caller = msg.sender;

        emit LogDetail(_myNumber, msg.sender, block.timestamp);
    }
}


