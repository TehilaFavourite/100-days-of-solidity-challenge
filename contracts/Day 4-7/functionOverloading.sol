// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract MyContract {
    function foo(uint256 _x) public pure returns (uint256) {
        return _x * 2;
    }

    function foo(uint256 _x, uint256 _y) public pure returns (uint256) {
        return _x + _y;
    }
}
