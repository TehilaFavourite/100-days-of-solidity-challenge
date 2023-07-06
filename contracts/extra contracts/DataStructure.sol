// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DataStructureExample {
    mapping(address => uint256) public balances;
    address[] public addressList;
    uint256[] public numberArray;
    string[] public stringArray;

    struct Person {
        string name;
        uint256 age;
    }
    Person[] public people;

    function addBalance() public payable {
        balances[msg.sender] += msg.value;
    }

    function getAddressCount() public view returns (uint256) {
        return addressList.length;
    }

    function addAddressToList(address _newAddress) public {
        addressList.push(_newAddress);
    }

    function getNumberArrayLength() public view returns (uint256) {
        return numberArray.length;
    }

    function addToNumberArray(uint256 _number) public {
        numberArray.push(_number);
    }

    function getStringArrayLength() public view returns (uint256) {
        return stringArray.length;
    }

    function addToStringArray(string memory _text) public {
        stringArray.push(_text);
    }

    function addPerson(string memory _name, uint256 _age) public {
        people.push(Person(_name, _age));
    }
}
