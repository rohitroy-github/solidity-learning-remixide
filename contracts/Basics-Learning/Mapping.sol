pragma solidity ^0.6.0; 

contract Mapping 
{ 
    //Mappings
    //mappings are indexed from 1 
    //mappings are similar to a database 
    //making a digital book db 
    mapping(uint => Book) public books; 

    //nested mappings 
    //mappings inside a mapping 
    mapping(address => mapping(uint => Book)) public myBooks; 

    struct Book 
    { 
        string title; 
        string authior; 
    }

    function addMyBook(uint _id, string memory _title, string memory _author) public 
    {
        myBooks[msg.sender][_id] = Book(_title, _author); 
    }

    // function addBook(uint _id, string memory _title, string memory _author) public 
    // {
    //     books[_id] = Book(_title, _author);
    // }

}