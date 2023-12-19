// SPDX-License-Identifier: GPL-3.0

import "@openzeppelin/contracts/utils/Counters.sol";
pragma solidity >=0.8.2 <0.9.0;

contract Bank_System
{
    using Counters for Counters.Counter;
    struct Stc_Account
    {
        string cust_name;
        uint256 cust_balance;
        address payable cust_address;
    }

    mapping (address=>uint256) public Map_cust;
    Counters.Counter _CurrentCarID;

    event Evt_deposit(address indexed cust_address, uint256 _cust_Balanace);

    receive() external payable 
    {
        require(msg.value > 1 ether, "The amount should be larger than 1 ");
        deposit_Money();
    }

//function to add customer data
function AddCustomer(string memory _custName, uint256 _cust_Balanace,address _cust_Address) public view { 
    
}

// function to deposit
function deposit_Money () public payable 
{   
    require(msg.value > 1 ether, "The amount should be larger than 1 ");
    Map_cust[msg.sender]+=msg.value;

}
//function to get balance

//function to withdraw
}

