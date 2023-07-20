// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AssertExample {
    uint256 public balance = 1000;

    function withdraw(uint256 amount) public {
        // Ensure the contract has sufficient balance before withdrawing
        assert(balance >= amount);

        // Deduct the withdrawn amount from the balance
        balance -= amount;
    }
}




