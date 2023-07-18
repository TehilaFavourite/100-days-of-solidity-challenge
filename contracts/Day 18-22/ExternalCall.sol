// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExternalCallExample {
    address public targetContract;
    uint256 public lastResult;

    constructor(address _targetContract) {
        targetContract = _targetContract;
    }

    function doExternalCall(uint256 data) public {
        // Use require to validate the target contract address
        require(
            targetContract != address(0),
            "Target contract address not set"
        );

        // Perform an external call to the target contract
        (bool success, bytes memory result) = targetContract.call(
            abi.encodeWithSignature("processData(uint256)", data)
        );

        // Check if the external call was successful
        require(success, "External call failed");

        // Parse the returned data
        lastResult = abi.decode(result, (uint256));
    }
}

// Example Target Contract
contract TargetContract {
    function processData(uint256 data) external pure returns (uint256) {
        return data * 2;
    }
}
