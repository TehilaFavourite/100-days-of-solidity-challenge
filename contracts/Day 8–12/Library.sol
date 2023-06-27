// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;
library MathUtils {
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        return a + b;
    }

    function multiply(uint256 a, uint256 b) internal pure returns (uint256) {
        return a * b;
    }
}

contract MyContract {
    using MathUtils for uint256;

    function performCalculation(
        uint256 x,
        uint256 y
    ) public pure returns (uint256) {
        uint256 result = x.add(y); // Using the add() function from the MathUtils library
        result = result.multiply(2); // Using the multiply() function from the MathUtils library
        return result;
    }
}
