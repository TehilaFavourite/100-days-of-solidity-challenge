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
