// SPDX-License-Identifier: Unlicensed
pragma solidity >=0.7.0;

contract HandleError {
    address public owner;
    uint public count;

    constructor() {
        owner = msg.sender;
    }

    function challenge() public {
        count++;
        assert(msg.sender == owner);
    }
}

contract RequireError {
    address public owner;
    uint public count;

    constructor() {
        owner = msg.sender;
    }

    function challenge() public {
        count++;
        require(msg.sender == owner, "You are not the owner");
    }
}

contract RevertError {
    address public owner;
    uint public count;

    constructor() {
        owner = msg.sender;
    }

    function challenge() public {
        count++;
        if (msg.sender != owner) {
            revert("You are not the owner");
        }
    }
}
