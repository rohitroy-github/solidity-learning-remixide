pragma solidity ^0.6.0;

contract ControlStructure 
{

    //creating ownership for this smart contract 
    address public owner; 

    constructor() public 
    {
        owner = msg.sender; 
    }

    uint[] public numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]; 

    function countEvenNumbers() public view returns (uint)
    {
        uint count = 0; 
        //lopping structure
        for(uint i = 0; i< numbers.length; i++) 
        {
            if(isEvenNumber(numbers[i]))
            {
                count ++; 
            }
        }
        return count; 
    }

    //Contional statements
    //Finction to check whether a number is even or not
    //similar to standard looping
    function isEvenNumber(uint _number) public view returns(bool) 
    {
        if(_number % 2 == 0)
        {
            return true;
        }
        else 
        {
            return false;
        }
    }

    //function for checking ownership of smart contract 
    function isOwner() public view returns (bool)
    {
        //simplified version for looping 
        //return(msg.sender == owner) 
        if(msg.sender == owner)
        {
            return true;
        }
        else
        {
            return false; 
        }
    }
}