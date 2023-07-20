// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandlingExample {
    uint256 public value;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // Error Handling using require
    function setValueWithRequire(uint256 newValue) public {
        require(newValue > 0, "Value must be greater than 0");
        value = newValue;
    }

    // Error Handling using assert
    function setValueWithAssert(uint256 newValue) public {
        uint256 oldValue = value;
        value = newValue;
        assert(value >= oldValue); // Value must not be decreased using assert
    }

    // Error Handling using try-catch (for external call)
    function externalCall(
        address targetContract,
        uint256 data
    ) public returns (bool) {
        try TargetContract(targetContract).processData(data) returns (
            bool success
        ) {
            return success;
        } catch Error(string memory errorMessage) {
            revert(errorMessage);
        } catch (bytes memory /*lowLevelData*/) {
            revert("Unknown error occurred");
        }
    }

    // Error Handling using custom error
    function customErrorHandling(uint256 data) public {
        if (data == 0) {
            revert CustomError("Value cannot be zero");
        }

        if (data == 42) {
            revert CustomError("The answer to everything is not allowed");
        }

        // Add other conditions and actions as needed
    }

    // Custom error definition
    error CustomError(string message);
}

contract TargetContract {
    function processData(uint256 data) external pure returns (bool) {
        return data % 2 == 0; // Returns true if data is even, false otherwise
    }
}
