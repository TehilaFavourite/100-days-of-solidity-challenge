library StringUtils {
    function concatenate(string memory a, string memory b) internal pure returns (string memory) {
        return string(abi.encodePacked(a, b));
    }

    function getLength(string memory str) internal pure returns (uint256) {
        return bytes(str).length;
    }
}

contract MyContract {
    using StringUtils for string;

    function performStringOperations(string memory a, string memory b) public pure returns (string memory, uint256) {
        string memory result = a.concatenate(b); // Using the concatenate() function from the StringUtils library
        uint256 length = result.getLength(); // Using the getLength() function from the StringUtils library
        return (result, length);
    }
}
