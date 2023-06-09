// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

library StringUtils {
    function concatenate(string memory a, string memory b) internal pure returns (string memory) {
        return string(abi.encodePacked(a, b));
    }

    function getLength(string memory str) internal pure returns (uint256) {
        return bytes(str).length;
    }
}

contract MyContract {

    function performStringOperations(string memory a, string memory b) public pure returns (string memory, uint256) {
        string memory result = StringUtils.concatenate(a,b); // Using the concatenate() function from the StringUtils library
        uint256 length = StringUtils.getLength(result); // Using the getLength() function from the StringUtils library
        return (result, length);
    }
}
