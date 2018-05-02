pragma solidity ^0.4.18;

contract HelloWorld {
    
    uint256 Value;
    
    event EventWithdrawContractBalance(uint256 value);
    
    event EventSetValue(uint256 value);
    
    function setValue(uint256 data) 
        public
        payable
    {
        Value = data;
        emit EventSetValue(msg.value);
    }
    
    function getValue()
        public
        constant
        returns (uint256)
    {
        return Value;
    }
    
    function withdrawContractBalance()
        public
    {
        uint256 balance = address(this).balance;
        msg.sender.transfer(balance);
        emit EventWithdrawContractBalance(balance);
    }
}
