// Function visibility
pragma solidity ^0.8.0;

contract FunctionVisibility {

    uint256 public myNumber;

    function setMyNumber(uint256 _number) public {
        myNumber = _number;
    }

    function getMyNumber() external view returns (uint256) {
        return myNumber;
    }

    function _doSomething() internal pure {
        // do something
    }
    
    function _doSomethingElse() private pure {
        // do something else
    }
}

// pure and view function

pragma solidity ^0.8.0;

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

