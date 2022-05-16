pragma solidity ^0.8.13;
// SPDX-License-Identifier: MIT

import "./AzookerKTS.sol";//AzookerUAI
abstract contract AzookerXID is AzookerKTS{

GlobalXID myGlobalXID;
constructor(address GlobalAT) AzookerKTS(GlobalAT) { myGlobalXID = GlobalXID(GlobalAT); }

function IDLastIndex() public view returns(uint){return IDs;}
uint IDs = 0;

mapping(uint => string) ID_AI;

   function XSetID(string memory AI) internal returns(uint){//Set the ID to an AI
    ++IDs;  ID_AI[IDs] = AI;
    return (IDs); 
    }

    function XOwnerID(uint ID) public view  returns(string memory){ //ID = [AI => Address] 
       return ID_AI[ID]; 
       }
       function XOwnerXID(uint ID) public view returns(string memory){
      return myGlobalXID.XOwnerXID(address(this), ID);
    }
}



contract GlobalXID{
  function XIDGlobalSet(address Contract, uint ID, string memory XID) public{}/*Set obj at contract by interact*/
  function XOwnerXID(address Contract, uint ID) public view returns(string memory){}/*Read owner of an object in  contract */
  function SetContract(address newContract, address Storage) public { }
 }
