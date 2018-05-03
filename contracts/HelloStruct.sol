pragma solidity ^0.4.18;

contract HelloStruct {
    
    struct Student {
        string name;
        string code;
    }
    
    mapping(address => Student) public students;
    
    function setStudentName(string name)
        public
    {
        students[msg.sender].name = name;
    }
    
    function getStudentName()
        public
        constant
        returns(string name)
    {
        return students[msg.sender].name;
    }
    
    function getStudentCode()
        public
        constant
        returns(string code)
    {
        return students[msg.sender].code;
    }
    
    function setStudentCode(string code)
        public
    {
        students[msg.sender].code = code;
    }
    
    function getStudent() 
        public
        constant
        returns(string name, string code)
    {
        return(students[msg.sender].name, students[msg.sender].code);    
    }
}
