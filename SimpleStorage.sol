//SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract SimpleStorage{
    uint256 number;

    struct Person {
        string firstname;
        string lastname;
        uint256 age;
    }

    Person [] public ListofPeople;

    mapping (string => uint256) public yolo;


    function store(uint256 _number) public virtual {
        number = _number;
    }

    function retrieve() public view returns(uint256){
        return number;
    }

    function AddPerson(string memory _firstname, string memory _lastname, uint256 _age) public {
        ListofPeople.push(Person(_firstname, _lastname, _age));
        yolo[_firstname]=_age;

    }
}