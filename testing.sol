    // SPDX-License-Identifier: MIT
    pragma solidity 0.8.19;

    contract testingVersion {

        struct InnerStruct1 {
            uint innerValue1;
        }
        
        struct InnerStruct2 {
            uint innerValue2;
        }
        
        struct OuterStruct {
            InnerStruct1 inner1;
            InnerStruct2 inner2;
        }
        
        OuterStruct public outer;
        
        constructor() {
            outer.inner1.innerValue1 = 1;
            outer.inner2.innerValue2 = 2;
        }
        
        function getInnerValue1() public view returns (uint) {
            return outer.inner1.innerValue1;
        }
        
        function getInnerValue2() public view returns (uint) {
            return outer.inner2.innerValue2;
        }

        
        // uint256 public testint;
        // function modifyInt(uint256 num) public returns (uint256){
        //     testint = num;
        //     return testint;
        // }
    }