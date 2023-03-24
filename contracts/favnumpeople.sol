//SPDX-License-Identifier:MIT
pragma solidity ^0.8.12;
contract lodeLog{
    uint256 public favnum;
    mapping( string=>uint256) public nametofnum;
 
    struct People{
        uint256 favonum;
        string name;
    }
    People[] public people;
    function store(uint256 _favnum) public{
        favnum=_favnum;
        retrieve();
    } 
    function retrieve() view public returns(uint256) {
        return favnum;
    }
    function addperson(string memory _name, uint256 _num) public{
        people.push(People(_num, _name));
        nametofnum[_name]=_num;
    }

}