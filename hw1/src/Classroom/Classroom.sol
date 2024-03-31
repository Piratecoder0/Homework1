// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Problem 1 Interface & Contract */
contract StudentV1 {
    uint times = 0;
    uint256 code = 1000;

    function register() external returns (uint256) {
        if(times == 0){
            times++;
            return code;
        }
        else{
            code = 123;
            return code;
        }
    }
}

/* Problem 2 Interface & Contract */
interface IClassroomV2 {
    function isEnrolled() external view returns (bool);
}

contract StudentV2 {
    function register() external view returns (uint256) {
        if(!IClassroomV2(msg.sender).isEnrolled()){
            uint256 code = 1000;
            return code;
        }
        else{
            uint256 code = 123;
            return code;
        }
    }
}

/* Problem 3 Interface & Contract */
contract StudentV3 {
    function register() external view returns (uint256) {
        uint Gasleft = gasleft();
        if(Gasleft > 6750 wei){
            uint code = 1000;
            return code;
        }
        else{
            uint code = 123;
            return code;
        }
    }
}
