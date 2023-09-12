//SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
import {SimpleStorage} from "./SimpleStorage.sol";
contract FiveStorage is SimpleStorage{

    function store(uint256 _number2) public override{
        number = _number2;
    }
}