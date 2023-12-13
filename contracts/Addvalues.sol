// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract Addvalues {
    
    uint256 public doorsNum=10;
    uint256 [] Salaries=[1,2,3,4,5,6,7];

    function getDoorsCount() public pure returns (uint256)
    {
       uint256 doorsNum1=300;
       return doorsNum1;       
    }

     function setDoorsCount() public returns (uint256)
    {
        return doorsNum=15;
        
    }

    function TryRequire() public view returns (uint) {

        require(doorsNum<15,"The doors is bigger than 10");
        return doorsNum;
    }

    function FindNum(uint256 TheNum) public view returns (bool) 
    {
        bool IsFound=false;
        uint256 i=0;

        for (i ; i<Salaries.length ; i++) 
        {
            if (Salaries[i]==TheNum) 
            {
                IsFound=true;
            } 
        }
        return IsFound;
    }

}
