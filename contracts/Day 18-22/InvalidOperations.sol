// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract InvalidOperationExample {
    uint256[] public myArray;

    function invalidOperation() public {
        // Division by zero
        uint256 a = 10;
        uint256 b = 0;
        uint256 divisionResult = a / b; // Will cause a division by zero exception

        // Array index out-of-bounds
        myArray = new uint256[](3);
        myArray[0] = 1;
        myArray[1] = 2;
        myArray[2] = 3;
        uint256 value = myArray[3]; // Accessing index 3 (out-of-bounds), will cause an array index out-of-bounds exception

        // Type conversion issue
        uint8 num1 = 200;
        uint8 num2 = 100;
        uint8 result = num1 + num2; // Invalid implicit conversion from uint16 to uint8, will cause a type conversion issue
    }
}
