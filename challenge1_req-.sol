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
    // Inside the challenge function, there is a require statement that checks whether the caller of the function 
    // (msg.sender) is the same as the owner of the contract. 
    // If the condition is not met and the caller is not the owner, 
    // the require statement will throw an error with the message "You are not the owner." 
    // This means that if someone other than the owner tries to call the function, the transaction will fail, and the count variable will not be incremented
    function challenge() public {
        count++;
        // the challenge function can be only called by owner
        require(msg.sender == owner,'You are not the owner');
    }
}