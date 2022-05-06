pragma solidity ^0.6.0; 

contract Arrays 
{ 
    //arrays in solidity does't actually returns the array itself rather you can pass an indx and it returns a single value from tht address
    uint[] public uintArray = [1, 2, 3]; 
    string[] public stringArray = ["apple", "banana", "pineapple", "orange"];  
    string[] public values; 

    //2D array 
    uint[][] public array2D = [ [1, 2, 3], [4, 5, 6]]; 

    function addValue( string memory _value) public 
    //_vlaue signifies that the value is being passed into a function 
    {
        values.push(_value); 
        //push = takes a value/ data and adds in to the end of the array
    }

    function valueCount() public view returns (uint)
    {
        return values.length; 
        //calculates array length 
    }


    }