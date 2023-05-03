pragma solidity 0.8.19;

contract ControlStructure {
    // basic example of if-else statment
    function ifElse(uint x) external pure returns (uint) {
        if (x < 10) {
            return 1;
        } else if (x < 20) {
            return 2;
        }
        return 3;
    }
    // writing shorthand using ternary operator
    function ternary(uint x) external pure returns (uint) {
        // if (x > 10) {
        //     return 1;
        // } 
        // return 2;
        // using ternary operator to write the above code
        return x > 10 ? 1 : 2; //this is an example of a ternary operator. 
    }
}
