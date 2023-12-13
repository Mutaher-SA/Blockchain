// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Mappingtest
{   
    // struct for accounts
    struct Accounts
    {
      string UName;
      uint UBalance;
      string UPhone;
      string Ucurrency;  
    }

    // mapping accounts to the struct
    mapping (address=>Accounts) public userAddress;
    mapping (uint=>mapping (address=>Accounts)) public allUsers;

    function setUersdata(uint _id, string memory _userName, uint _userBalance, string memory _userPhone, string memory _userCurrency) public  
    {
        allUsers[_id][msg.sender]=Accounts(_userName,_userBalance,_userPhone,_userCurrency);
    } 

    function getUserdata(uint _id) public view returns (Accounts memory)
    {
        return allUsers[_id][msg.sender];   
    }

    function addValues (uint _val) public pure returns (uint) 
    {
        return _val+50;
    }

}

contract eXtraValue{
    Mappingtest Omapping= new Mappingtest();

    function addeXtra() public view 
    {
        Omapping.addValues(10);
    }

}
