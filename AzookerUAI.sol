pragma solidity 0.8.13;
// SPDX-License-Identifier: MIT


abstract contract AzookerUAI  {
address Manager;
modifier isManager(){require(msg.sender == Manager, "Security Warning: This address is not a manager"); _;}
function _SetManager(address newManager) isManager() public {Manager = newManager;}

GlobalUID myGlobalUID;
constructor(address GlobalAT) { Manager = msg.sender; myGlobalUID = GlobalUID(GlobalAT); }

function _AILogin(string memory AI) public view returns(bool succes){ return(myGlobalUID._AILogin(AI, msg.sender)); } 

}


contract GlobalUID { 
function _AILogin(string memory AI, address AIAddr) public view returns(bool succes) {}
}
