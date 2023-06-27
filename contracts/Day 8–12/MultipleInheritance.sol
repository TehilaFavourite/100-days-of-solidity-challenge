// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract SeniorDevA {
    function solidityTut() public pure returns (string memory) {
        return "I teach solidity!";
    }
}


contract SeniorDevB {
    function testingSmartContracts() public pure returns (string memory) {
        return "I can teach smart contract testing!";
    }
}

contract SeniorDevC {
    function yulOpcodes() public pure returns (string memory) {
        return "I can teach yul opcodes!";
    }
}

contract Skilss is SeniorDevA, SeniorDevB, SeniorDevC {
    // Superhero-specific functions and variables
    // ...
}


