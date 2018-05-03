pragma solidity ^0.4.18;

contract HelloModifier {
    
    uint Value;
    
    function HelloModifier()
        public
    {
        Value = 0; 
    }
    
    modifier onlyGreaterValue() {
        if(msg.value <= Value) {
            throw
        };
        _;
    }
    
    function payToContract()
        public
        payable
        onlyGreaterValue
    {
        Value += msg.value;
    }
}
