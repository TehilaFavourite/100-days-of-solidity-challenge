pragma solidity ^0.8.0;

contract ContractA {
    function doActivity() public pure virtual returns (string memory) {
        return "Activity from ContractA";
    }
}

contract ContractB {
    function doActivity() public pure virtual returns (string memory) {
        return "Activity from ContractB";
    }
}

contract DerivedContract is ContractA, ContractB {
    function doActivity() public pure override(ContractA, ContractB) returns (string memory) {
        return ContractA.doActivity();
    }
}
