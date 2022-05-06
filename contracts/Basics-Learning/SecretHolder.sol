//A Secret Holder 

pragma solidity ^0.6.0; 

contract Ownable 
{   
    address public owner; 

    constructor() public 
    {
        owner = msg.sender; 
    }

    modifier onlyOwner() 
    {
        require(msg.sender == owner, 'You must be an owner !'); 
        _;
    }
}

contract SecretVault
{
    string secret; 

    constructor(string memory _secret) public 
    { 
        secret = _secret;
    }

    function getSecret() public view returns(string memory)
    //adding 'onlyOwner' modifier lets only the user who deployed the contract to call this function
    {
        return secret; 
    }

}

contract SecretHolder is Ownable
{ 
    address secretVault; 

    constructor(string memory _secret) public 
    { 
        SecretVault _secretVault = new SecretVault(_secret); 
        secretVault = address(_secretVault); 
        super; 
    }

    function getSecret() public view onlyOwner returns(string memory)
    //adding 'onlyOwner' modifier lets only the user who deployed the contract to call this function
    {
        SecretVault _secretVault = SecretVault(secretVault); 

        return _secretVault.getSecret(); 
    }
}