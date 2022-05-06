pragma solidity ^0.6.0; 

contract HelloWorld 
{
    string public string1 = "Hello World !"; 

    function getValue() public view returns(string memory) 
    {
        return string1;
    }
}