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
        // while loop
        uint A = 0;
        while (while A < 10) {
            // code
            j++;
        }
    }

    function add(uint b) external pure returns (uint) {
        uint y;
        for (i = 0; i <= b; i++;) {
            y += i;
        }
        return y;
    }
}

// more examples

contract ControlStructuresDemo {
    // if statement
    function isEven(uint256 num) public pure returns (bool) {
        if (num % 2 == 0) {
            return true;
        } else {
            return false;
        }
    }

    // for loop
    function sum(uint256[] memory nums) public pure returns (uint256) {
        uint256 total = 0;
        for (uint256 i = 0; i < nums.length; i++) {
            total += nums[i];
        }
        return total;
    }

    // while loop
    function factorial(uint256 num) public pure returns (uint256) {
        uint256 result = 1;
        while (num > 1) {
            result *= num;
            num--;
        }
        return result;
    }

    // do-while loop
    function count(uint256 num) public pure returns (uint256) {
        uint256 count = 0;
        do {
            count++;
        } while (count < num);
        return count;
    }


    // ternary operator
    function isPositive(int256 num) public pure returns (bool) {
        return num > 0 ? true : false;
    }

    // require statement
    function divide(uint256 x, uint256 y) public pure returns (uint256) {
        require(y != 0, "division by zero");
        return x / y;
    }
}
