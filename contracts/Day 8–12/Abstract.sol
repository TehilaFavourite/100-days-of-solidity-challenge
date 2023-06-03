// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.6.0 <0.9.0;

abstract contract Performer {
    function rules() public pure virtual returns (bytes32);
}

contract Singer is Performer {
    function rules() public pure override returns (bytes32) {
        return "sing";
    }
}
