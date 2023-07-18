// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RevertAndRequireExample {
    uint256 public balance = 1000;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function withdraw(uint256 amount) public {
        // Use require to validate the amount to be withdrawn
        require(amount > 0, "Invalid withdrawal amount");

        // Use require to ensure the contract has sufficient balance
        require(balance >= amount, "Insufficient balance");

        // Perform the withdrawal
        balance -= amount;
    }

    function onlyOwner() public view {
        // Use require to restrict access to the function to the contract owner
        require(
            msg.sender == owner,
            "Only the contract owner can call this function"
        );
    }

    function throwError() public pure {
        // Use revert to explicitly trigger a revert with a custom error message
        revert("This is a custom error message");
    }
}
