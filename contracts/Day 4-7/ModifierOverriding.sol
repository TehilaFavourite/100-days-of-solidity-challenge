// modifier overriding
// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.19;

contract Base
    {
    modifier foo() virtual {_;}
    }
    
contract Inherited is Base
    {
    modifier foo() override {_;}
    }
