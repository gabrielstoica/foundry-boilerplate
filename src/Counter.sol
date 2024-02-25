// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Counter is Ownable {
    uint256 public foo;
    string public bar;

    constructor(uint256 _foo, string memory _bar) Ownable(msg.sender) {
        foo = _foo;
        bar = _bar;
    }

    function setFoo(uint256 newFoo) public onlyOwner {
        foo = newFoo;
    }

    function setBar(string memory newBar) public onlyOwner {
        if (keccak256(abi.encodePacked(bar)) != keccak256(abi.encodePacked(newBar))) {
            bar = newBar;
        }
    }

    function incrementFoo() public onlyOwner {
        foo++;
    }
}
