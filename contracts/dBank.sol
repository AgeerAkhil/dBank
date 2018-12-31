pragma solidity ^0.5.2;

contract dBank {

    address owner;

    mapping (address => uint) balances;


    function enroll() returns(bool){
        owner = tx.origin;
        return true;
    }

    
    function deposit(address customer,uint value) returns (bool res) {
        
        balances[customer] += value;
        return true;
    }

   
    function withdraw(address customer, uint amount) returns (bool res) {
       
        if (balances[customer] < amount || amount == 0){
            return false;
        }
        balances[customer] -= amount;

        return true;
    }

    function getBalanceOf(address customer) constant returns(uint){
        return balances[customer];
    }

}