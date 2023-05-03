pragma solidity 0.8.19;

contract Variables {
    uint256 public stateVar; //state variable
    bool public stateVar2; //state variable
    address public stateVar3; //state variable

    constructor() {
        stateVar = 20; // using the state variable
    }

    function localvariable() external pure {
        uint256 localVar = 50; //local variable
        bool M = true; //local variable
    }
}

// Global variables

contract GlobalVariablesDemo {
    // Current block data
    uint256 public currentBlockNumber;
    uint256 public currentBlockTimestamp;
    address public currentBlockMiner;

    // Transaction data
    address public transactionSender;
    uint256 public transactionValue;

    // Message data
    address public messageSender;
    bytes public messageData;

    // Contract data
    address public contractAddress;
    uint256 public contractBalance;

    constructor() payable {
        // Get current block data
        currentBlockNumber = block.number;
        currentBlockTimestamp = block.timestamp;
        currentBlockMiner = block.coinbase;

        // Get transaction data
        transactionSender = msg.sender;
        transactionValue = msg.value;
        // "msg.value" and "callvalue()" can only be used in payable constructors. Make the constructor "payable" to avoid error.

        // Get message data
        messageSender = tx.origin;
        messageData = msg.data;

        // Get contract data
        contractAddress = address(this);
        contractBalance = address(this).balance;
    }

    // Function to receive Ether
    receive() external payable {
        contractBalance = address(this).balance;
    }
}