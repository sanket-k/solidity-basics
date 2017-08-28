pragma solidity ^0.4.11;

contract payable_contract{
    
    //constructor
    function payable_contract(){
        
    }
    
    //To recive either(mostly wei) "payable is predefined" making it a function to recive wei
    function recive_fund() payable{
        
    }
    
    //"this" is a predefined function.
    function getter() constant returns(uint){
        return this.balance;
    }
}