pragma solidity ^0.6.0; 

contract Counter 
{ 
    //unit - unsigned integer (so it can't be negative) 
    //1, 2, 3, 4 .....
    //count is a state variable here, it's gonna remain saved on the blockchain
    uint count = 0; 

    // constructor() public 
    // {
    //     count = 0; 
    // }

    function getCount() public view returns(uint)
    {
        //specifying the return type of this function
        //using 'public' modifier/ access specifier 
        return count;
    }

    function incrementCount() public 
    { 
        count = count+1; 
    }
}