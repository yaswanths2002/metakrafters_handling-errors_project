// SPDX-License-Identifier: Unlicensed

pragma solidity >=0.7.0;

contract HandleError {
    address public owner;
    uint public count;

    constructor() {
        owner = msg.sender;
    }

// It checks whether the caller of the function (msg.sender) is the same as the owner of the contract.
// If the condition is true it will increment the count and if the condition is false 
// The assert statement will throw an exception and revert the transaction, effectively cancelling the increment of count
    function challenge() public {
        count++;
        assert(msg.sender == owner);
    }
}
