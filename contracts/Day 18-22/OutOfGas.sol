// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OutOfGasExample {
    uint256[] public largeArray;

    function addElements(uint256 numElements) public {
        // Simulate an expensive operation that consumes a lot of gas
        for (uint256 i = 0; i < numElements; i++) {
            largeArray.push(i);
        }
    }
}
