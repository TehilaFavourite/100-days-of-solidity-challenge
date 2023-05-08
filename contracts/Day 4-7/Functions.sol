// Basic function
pragma solidity 0.8.19;

contract MyContract {
    uint public myNumber;
    
    function setNumber(uint _number) public {
        myNumber = _number;
    }
}

// another basic function
pragma solidity 0.8.19;

contract Function {
    
    function add (uint _a, uint _b) external pure returns(uint) {
        return _a + _b;
    }
}

// Function visibility
pragma solidity 0.8.19;

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

// function modifier
pragma solidity 0.8.19;

contract MyContract {
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

