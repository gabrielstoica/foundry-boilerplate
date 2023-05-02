// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/access/Ownable.sol";
import "forge-std/console.sol";

contract Counter is Ownable {
    uint256 public val1;
    uint256 public val2;
    string public word;

    constructor(uint256 _val1, uint256 _val2, string memory _word) {
        val1 = _val1;
        val2 = _val2;
        word = _word;
    }

    function setVal1(uint256 _val1) public {
        val1 = _val1;
    }

    function setWord(string memory _word) public {
        if (
            keccak256(abi.encodePacked(_word)) ==
            keccak256(abi.encodePacked("bar"))
        ) word = "foo";
        else word = _word;
    }

    function incrementVal1() public {
        val1++;
    }
}
