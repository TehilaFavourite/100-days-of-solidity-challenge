// function modifier
pragma solidity 0.8.19;

contract myModifier {
    address public owner;
    uint public myNumber;

    modifier onlyOwner {
        require(msg.sender == owner, "Only contract owner can call this function");
        _; // This indicates where the function body will be placed
    }

    modifier validNumber {
        require(myNumber > 0, "Number must be greater than zero");
        _;
    }

    constructor() {
        owner = msg.sender;
        myNumber = 0;
    }

    function setNumber(uint _number) public onlyOwner validNumber {
        myNumber = _number;
    }
}
