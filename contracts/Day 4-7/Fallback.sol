// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.19;

contract Fallback {
    event Log(string funct, address sender, uint value, bytes data);

    fallback() external payable {
        emit Log("fallback", msg.sender, msg.value, msg.data);
    }

    receive() external payable {
        emit Log("receive", msg.sender, msg.value, "");
    }
}

// more code
// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.19;

contract Test {
    uint x;

    // This function is called for all messages sent to
    // this contract (there is no other function).
    // Sending Ether to this contract will cause an exception,
    // because the fallback function does not have the `payable`
    // modifier.
    fallback() external {
        x = 1;
    }
}

contract TestPayable {
    uint x;
    uint y;

    // This function is called for all messages sent to
    // this contract, except plain Ether transfers
    // (there is no other function except the receive function).
    // Any call with non-empty calldata to this contract will execute
    // the fallback function (even if Ether is sent along with the call).
    fallback() external payable {
        x = 1;
        y = msg.value;
    }

    // This function is called for plain Ether transfers, i.e.
    // for every call with empty calldata.
    receive() external payable {
        x = 2;
        y = msg.value;
    }
}
