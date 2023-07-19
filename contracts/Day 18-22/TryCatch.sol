// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Contract that makes an external call to TargetContract
contract CallerContract {
    address public targetContract;

    constructor(address _targetContract) {
        targetContract = _targetContract;
    }

    function callExternalFunction(uint256 data) public view returns (bool) {
        // Use try-catch for handling exceptions from the external call
        try TargetContract(targetContract).processData(data) returns (
            bool success
        ) {
            // Handle the successful external call
            return success;
        } catch Error(string memory errorMessage) {
            // Handle the error from the external call
            // Log or perform appropriate actions
            revert(errorMessage);
        } catch (bytes memory /*lowLevelData*/) {
            // Catch remaining exceptions
            revert("Unknown error occurred");
        }
    }
}

// Target contract to be called by CallerContract
contract TargetContract {
    uint256 public maxLimit = 100;

    function processData(uint256 data) external view returns (bool) {
        // Handling multiple exceptions with custom error messages
        if (data > maxLimit) {
            revert CustomError("Value exceeds the maximum allowed");
        }

        // External call always returns false to demonstrate handling exceptions
        return false;
    }

    // Custom error definition
    error CustomError(string message);
}
