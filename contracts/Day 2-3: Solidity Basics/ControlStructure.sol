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

    // for and while loops
    function loops() external pure {
        for (
            uint i = 0;
            i < 10;
            i++ //i++ means i will be increamented after the "for" loop runs
        ) {
            // code
            if (i == 3) {
                continue; // this is to skip one iteration of the loop
            }
            // more code
            // when i == 3, "more code" willnot be executed
            // if you want it to exit out of the loop, use "break"
            if (i == 5) {
                break; // this means we finished the loop at "i == 5"
            }
        }
    }
}
