// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract sumof2num
{

    function gettheSum() public pure returns (uint)
    {
    
        uint n1=232;
        uint n2= 1;

        return n1+n2;
    }
    
}

contract cars
{
    string carName;
    string carBrand;
    uint carModel;
    bool redCar;
    uint carsct;
    
    function setCarData(string memory _CarName, string memory _CarBrand, uint _Carmodel, bool _RedCar) public 
    {
        carName=_CarName;
        carBrand=_CarBrand;
        carModel=_Carmodel;
        redCar=_RedCar;

        return ();
    } 

    function getCarData() public view returns (string memory _CarName, string memory _CarBrand, uint _Carmodel, bool _RedCar)
    {
        bytes memory carnameLen=bytes(carName);
        carnameLen.length;
        return(carName, carBrand, carModel, redCar);         
    }

    function controlSum(uint num1, uint num2) public pure returns (uint)
    {
        if (num1>5 && num2<5) 
        {
            return num1-num2;
        }
        else
        {
            return num1+num2;
        }
    }

    
}

