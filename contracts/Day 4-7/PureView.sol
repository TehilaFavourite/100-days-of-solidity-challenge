// pure and view function

pragma solidity 0.8.19;

contract Function {
    uint public myNumber;

// this is a view function because it reads data (myNumber) from the blockchain
    function getNumber() public view returns (uint) {
        return myNumber; 
    }

// This is a pure function because it does not read anything from the blockchain
    function addNumbers(uint a, uint b) public pure returns (uint) {
        return a + b;
    }
}
