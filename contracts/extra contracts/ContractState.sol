// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleBank {
    // Define a struct to represent user accounts
    struct Account {
        uint256 balance;
        bool exists;
    }

    // Mapping to store user accounts, where the key is an address (Ethereum address) and the value is the Account struct
    mapping(address => Account) public accounts;

    // Function to open a new account with an initial balance
    function openAccount() public {
        // Ensure the account doesn't already exist
        require(!accounts[msg.sender].exists, "Account already exists");

        // Create a new Account struct with an initial balance of 0
        Account memory newAccount = Account(0, true);

        // Store the new account in the mapping using the sender's address as the key
        accounts[msg.sender] = newAccount;
    }

    // Function to get the account balance of the caller
    function getAccountBalance() public view returns (uint256) {
        // Ensure the account exists
        require(accounts[msg.sender].exists, "Account does not exist");

        // Access the account balance from the mapping using the caller's address
        return accounts[msg.sender].balance;
    }

    // Function to deposit funds into the caller's account
    function deposit(uint256 amount) public {
        // Ensure the account exists
        require(accounts[msg.sender].exists, "Account does not exist");

        // Increase the account balance by the deposited amount
        accounts[msg.sender].balance += amount;
    }

    // Function to withdraw funds from the caller's account
    function withdraw(uint256 amount) public {
        // Ensure the account exists
        require(accounts[msg.sender].exists, "Account does not exist");

        // Ensure the account has enough balance for withdrawal
        require(accounts[msg.sender].balance >= amount, "Insufficient balance");

        // Decrease the account balance by the withdrawn amount
        accounts[msg.sender].balance -= amount;
    }
}
