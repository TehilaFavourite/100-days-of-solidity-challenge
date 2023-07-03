// Here's an example of a Solidity smart contract that demonstrates the three ways of initializing a struct
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StructInitializationExample {
    struct Person {
        string name;
        uint age;
    }

    function initializeStruct() public pure returns (Person memory) {
        // Initializing a struct using method 1: Direct assignment
        Person memory person1 = Person("Alice", 25);

        // Initializing a struct using method 2: Named arguments
        Person memory person2 = Person({name: "Bob", age: 30});

        // Initializing a struct using method 3: Individual assignments
        Person memory person3;
        person3.name = "Charlie";
        person3.age = 35;

        return person1;
    }
}
