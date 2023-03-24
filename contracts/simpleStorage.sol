// SPDX-License-Identifier:MIT
pragma solidity ^0.8.12;

contract SimpleStorage{
    uint256 public favnum;
    function store(uint256 _favNum) public{
        favnum= _favNum;
    }
    function retrieve() public view returns(uint256){
        return favnum;
    }
    function add() public pure returns(uint256){
        return (1+2);
    }
}