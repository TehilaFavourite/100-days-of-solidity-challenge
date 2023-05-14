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


// more examples
pragma solidity 0.8.19;

contract ExampleContract {
    uint private myPrivateVariable; // A private variable
    uint public myPublicVariable; // A public variable
    uint internal myInternalVariable; // An internal variable
    uint256[] myArray; // An array

    constructor() {
        myPrivateVariable = 0;
        myPublicVariable = 0;
        myInternalVariable = 0;
    }

    function myPublicFunction() public view returns (uint) { // A public view function
        return myPublicVariable;
    }

    function myInternalFunction() internal pure returns (uint) { // An internal pure function
        return 0;
    }

    function myPrivateFunction() private { // A private function
        myPrivateVariable = 42;
    }

    function myExternalFunction(uint256[] calldata _myArray) external { // An external function
        myArray = _myArray;
    }

    function myPureFunction() public pure returns (bool) { // A public pure function
        return true;
    }

    function myViewFunction() public view returns (uint256) { // A public view function
        return myArray.length;
    }

    modifier myModifier() { // A custom modifier
        require(msg.sender == tx.origin, "Only the original sender can call this function");
        _;
    }

    function myFunctionWithModifier() public myModifier { // A public function with a custom modifier
        myPublicVariable = 42;
    }
}

