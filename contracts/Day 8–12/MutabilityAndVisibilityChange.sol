// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Base {
    function foo() external view virtual {}
}

contract Middle is Base {}

contract Inherited is Middle {
    function foo() public pure override {}
}
