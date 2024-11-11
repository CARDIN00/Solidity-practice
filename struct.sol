// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
//structure
contract Structure{
    struct Emp{
        address acc;
        string name;
        uint age;
    }

    Emp public emp;

    // constructor(string memory _name,uint _age,address _acc){
    //     emp.name=_name;
    //     emp.age= _age;
    //     emp.acc=_acc;
    // }

    Emp[] public emps;
 // different ways to initialize
    function setValues() public {  
        Emp memory emp1 = Emp(0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB,"Karan",21);
        
        Emp memory emp2 = Emp({name:"ajay", age:21, acc :msg.sender});

        Emp memory emp3;
        emp3.name= "aman";
        emp3.age =23;
        emp3.acc = 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB;


        emps.push(emp1);
        emps.push(emp2);
        emps.push(emp3);

        Emp storage emp_temp= emps[1];

        emp_temp.age =31;//update the value
        

        //update
        // Emp storage emp_temp =emp; //  
        // emp_temp.name ="harsh";


    }

}