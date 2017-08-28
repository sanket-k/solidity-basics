pragma solidity ^0.4.11;

contract hello_world{
    
    string word = "doting";
    int num1 = 45;
    
    function get_num()constant returns(int){
        return num1;
    }
    
    function get_word() constant returns(string){
        return word;
    }
    
    function set_word(string new_word) returns(string){
        word = new_word;
        return word;
    }
}