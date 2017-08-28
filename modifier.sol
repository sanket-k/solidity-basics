pragma solidity ^0.4.11;

contract permission_contract {
    
    string word = "Hello World";        // state variable is always on top(usually)
    address public issuer;              // left blank since we dont know who issued the contract(public is used as it a test network)
    
    //constructor
    function permission_contract(){
        issuer = msg.sender;           // reserved key word in solidity   
    }
    
    //modifier (cant have return or text based output)
    modifier ifnotadmin(){
        if(issuer != msg.sender){
            revert;
        }
        else{
            _;
        }
    }
    
    function get_word() constant returns(string){
        return word;
    }
    
    // to check if the user is admin(or the issuer) to change the word
    function set_word(string new_word) returns(string){
        if(issuer != msg.sender){
            return "not admin, changes not allowed!!!";
        }
        else{
            word = new_word;
            return "change complete by admin";
        }
    }
    
    //using modifier
    function set_word_2(string new_word_2) ifnotadmin returns(string){
        word = new_word_2;
        return "Changes complete by admin";
    }
}