// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArrayExample {
    // Dynamic size array
    uint[] dynamicArray;

    // Fixed size array
    uint[3] fixedArray;

    function initializeArrays() public {
        // Initializing dynamic array
        dynamicArray = [1, 2, 3];

        // Initializing fixed array
        fixedArray = [4, 5, 6];
    }

    function pushToDynamicArray(uint _value) public {
        // Adding an element to the end of the dynamic array
        dynamicArray.push(_value);
    }

    function getElementFromDynamicArray(uint _index) public view returns (uint) {
        // Accessing an element from the dynamic array
        return dynamicArray[_index];
    }

    function updateElementInDynamicArray(uint _index, uint _newValue) public {
        // Updating an element in the dynamic array
        dynamicArray[_index] = _newValue;
    }

    function deleteElementInDynamicArray(uint _index) public {
        // Deleting an element from the dynamic array
        delete dynamicArray[_index];
    }

    function popFromDynamicArray() public returns (uint) {
        // Removing and returning the last element of the dynamic array
        return dynamicArray.pop();
    }

    function getDynamicArrayLength() public view returns (uint) {
        // Getting the length of the dynamic array
        return dynamicArray.length;
    }

    function createArrayInMemory() public pure returns (uint[] memory) {
        // Creating an array in memory
        uint[] memory newArray = new uint[](5);
        newArray[0] = 10;
        newArray[1] = 20;
        newArray[2] = 30;
        newArray[3] = 40;
        newArray[4] = 50;

        return newArray;
    }
}
ß