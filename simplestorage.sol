// // SPDX-License-Identifier: MIT
// Set up my favorite number, write a function to change it to some new value, 
// Then create a struct and populate an array so I can store any number of peoples' favorite numbers
pragma solidity ^0.8.12;
contract simplestorage {
    uint256 favoritenumber; //public?
    //People public person = ({favoritenumber: 2, name: "Alex"}); -> this was for doing it with just 1 person
    
    mapping(string => uint256) public nametofavoritenumber;

    struct People {
        uint256 favoritenumber;
        string name;
    }
    People [] public people;
    function store (uint256 _favoritenumber) public {
        favoritenumber = _favoritenumber;
    }
    function retrieve() public view returns(uint256) {
        return favoritenumber;
    }
    function addperson(string memory _name, uint256 _favoritenumber) public {
        people.push(People(_favoritenumber, _name));
        nametofavoritenumber[_name] = _favoritenumber;
    }
}
