pragma solidity ^0.6.0; 

contract Basics 
{ 
    //public = writing this keyword makes a function behind the scenes which we can call to get the values just like getValues()
    //state variables
    //state variable is storted on the mian blockchain itself and thus can be accessed everywhere inside the contract
    uint public myUnit = 1; 

    //uint = unsigned integer (can't have a -ve sign associated) 
    //uint256 = bigger integers 
    //uint8 = relatively smaller integers

    //strings
    string public myString = "Hello World !"; 

    //address
    address public myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; 

    struct MyStruct 
    { 
        uint myInt; 
        string myString; 
    }
    MyStruct public myStruct = MyStruct(1, "Hello World !"); 
    //local variables 
    //information can be used/ visible only inside this function itself

    function getValue() public pure returns(uint) 
    {
        uint value = 1; 
        return value; 
    }

}