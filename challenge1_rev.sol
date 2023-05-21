// SPDX-License-Identifier: Unlicensed

pragma solidity >=0.7.0;

// creating a contract 
contract handle_error{
    // declaring the address 
    address public owner;
    // defining a variable
    uint public count;

    // defining a constructor function
    constructor (){
        owner=msg.sender;
    }
// Inside the challenge function the if statement checks whether the caller of 
// the function (msg.sender) is the same as the owner of the contract. 
// If the msg.sender is not the owner, 
// it will trigger a revert statement with the error message "You are not the owner." 
// This means that if someone other than the owner tries to call the function, the transaction will fail, and the count variable will not be incremented.
    function challenge() public {
        count++;
        if (msg.sender!=owner){
            revert("You are not the owner");
        }
    }
}