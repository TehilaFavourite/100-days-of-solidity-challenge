// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.18;

contract Fallback {

    event Log(string funct, address sender, uint value, bytes data);

    fallback() external payable {
        emit Log("fallback", msg.sender, msg.value, msg.data);
    }

    receive() external payable {
        emit Log("receive", msg.sender, msg.value, "");
    }
}
