// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

//import "@openzeppelin/contracts/utils/Strings.sol";

contract Calculate_numbers 
{

    uint256 public DoSum=0;
    uint256 [] public Arr_Sum;
    

    
    address public owner=msg.sender;

    modifier onlyTheOwner 
    {
      require(msg.sender == owner,"Only The Owner Can View The Array Size!!!");
      _;
    }

    function Add2_Numbers(uint256 _num1, uint _num2) public  
    {
        DoSum= _num1+_num2;
        Arr_Sum.push(DoSum);        
    }

    function ViewArray() public view onlyTheOwner returns (uint[] memory)    
    {
        //return string.concat( "The length of the Array is=", Strings.toString(Arr_Sum.length));
        uint256 [] memory Arr_Result= new uint256 [] (Arr_Sum.length) ;

        for (uint i = 0; i < Arr_Sum.length; i++) {
            Arr_Result[i] = Arr_Sum[i];
        }
        return Arr_Result;
    }
}