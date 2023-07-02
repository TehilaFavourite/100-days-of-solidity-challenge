// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MappingExample {
    // Simple Mapping
    mapping(address => uint) public balances;

    // Nested Mapping
    mapping(address => mapping(uint => string)) public nestedMapping;

    function setSimpleMappingValue(uint _value) public {
        // Set a value in the simple mapping
        balances[msg.sender] = _value;
    }

    function getSimpleMappingValue(address _address) public view returns (uint) {
        // Get the value from the simple mapping using the provided address
        return balances[_address];
    }

    function deleteSimpleMappingValue() public {
        // Delete the value from the simple mapping for the sender's address
        delete balances[msg.sender];
    }

    function setNestedMappingValue(uint _key, string memory _value) public {
        // Set a value in the nested mapping
        nestedMapping[msg.sender][_key] = _value;
    }

    function getNestedMappingValue(address _address, uint _key) public view returns (string memory) {
        // Get the value from the nested mapping using the provided address and key
        return nestedMapping[_address][_key];
    }

    function deleteNestedMappingValue(uint _key) public {
        // Delete the value from the nested mapping for the sender's address and the provided key
        delete nestedMapping[msg.sender][_key];
    }
}
