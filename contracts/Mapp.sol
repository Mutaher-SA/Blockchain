// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Mapp 
    {
        
        struct Accounts
        {
            string Acc_Name;
            int Acc_Balance;
            string Acc_Phone;
            string Acc_currency;
        }

        mapping (address=>Accounts) public userAddress;    

        mapping (uint=>mapping (address=>Accounts)) public AllUsers;

//----------------------------------------------------------------------------------------------------------------------------------------------------------------
//Using Normal Mapping:
        function setUserAccount(string memory _userName, int _Balance, string memory _Phone, string memory _Currency) public 
        {
            userAddress[msg.sender]=Accounts(_userName, _Balance, _Phone,_Currency);
        }

        function getUserAccount() public view returns (Accounts memory)
        {
            return userAddress[msg.sender];
        }
//------------------------------------------------------------------------------------------------------------------------------------------------------------
// Using Nested Mapping:
        function setAllUserAccount(uint _id,string memory _userName, int _Balance, string memory _Phone, string memory _Currency) public 
        {
            //userAddress[msg.sender]=Accounts(_userName, _Balance, _Phone);
            AllUsers[_id][msg.sender]=Accounts(_userName, _Balance, _Phone,_Currency);
        }

        function getAllUserAccount(uint _id) public view returns (Accounts memory)
        {
            //return userAddress[msg.sender];
            return AllUsers[_id][msg.sender];
        }

    }