// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PaginationExample {
    uint256[] public data;
    uint256 public pageSize;

    constructor(uint256 _pageSize) {
        pageSize = _pageSize;
    }

    function addData(uint256[] memory _data) public {
        data = _data;
    }

    function getData(uint256 _page) public view returns (uint256[] memory) {
        require(_page > 0, "Invalid page number");

        uint256 startIndex = (_page - 1) * pageSize;
        uint256 endIndex = startIndex + pageSize;

        if (endIndex > data.length) {
            endIndex = data.length;
        }

        uint256[] memory result = new uint256[](endIndex - startIndex);

        for (uint256 i = startIndex; i < endIndex; i++) {
            result[i - startIndex] = data[i];
        }

        return result;
    }
}
