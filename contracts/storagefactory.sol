//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./simpleStorage.sol";
contract StorageFactory{
    SimpleStorage[] public simplstoragearray;
    function  createsimplestorage() public{
        SimpleStorage simplstorage=new SimpleStorage();
        simplstoragearray.push(simplstorage);
    }
    function sfstore(uint256 _simplestorageindex, uint256 _simplestoragenumber) public {
        //ABI application binary index
        SimpleStorage simplstorage=simplstoragearray[_simplestorageindex];
        simplstorage.store(_simplestoragenumber);
    }
    function sfget(uint256 _simplestorageindex) public view returns(uint256){
        SimpleStorage simplstorage=simplstoragearray[_simplestorageindex];
        return simplstorage.retrieve();
    }

}