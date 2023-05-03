pragma solidity 0.8.19;

contract Datatypes {
    // Boolean
    bool public isTrue = true;

    // integer
    int8 public smallNumber = -128;
    int256 public bigNumber = 2 ** 255 - 1;

    // Unsigned integer
    uint8 public smallUnsignedNumber = 255;
    uint256 public bigUnsignedNumber = 2 ** 256 - 1;

    // Address
    address public myAddress = address(this);

    // String
    string public myString = "Hello, world!";

    // Bytes
    bytes public myBytes = hex"1234567890abcdef";

    // Fixed-point decimal
    //  Note: avoid using fixed-point numbers
    fixed public fixedNumber = 1.5;
    ufixed public ufixedNumber = 0.123;

    // Enum
    enum State {
        Pending,
        Approved,
        Rejected
    }
    State public currentState = State.Pending;

    // Array
    uint256[] public myArray = [1, 2, 3, 4, 5];

    // Mapping
    mapping(address => uint256) public myMapping;

    // Struct
    struct Person {
        string name;
        uint256 age;
    }
    Person public myPerson = Person("Alice", 30);

    // Contract
    DataTypesDemo public myContract = this;
}
