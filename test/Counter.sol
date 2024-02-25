// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { Base_Test } from "./Base.t.sol";
import "../src/Counter.sol";

contract CounterTest is Base_Test {
    function setUp() public override {
        counter = deployCounter(1, "bar");
    }

    function testIncrement() public {
        uint256 oldFoo = counter.foo();
        counter.incrementFoo();
        uint256 newFoo = counter.foo();
        assertEq(oldFoo + 1, newFoo);
    }

    // fuzz test
    function testFuzz_setNumber(uint256 x) public {
        counter.setFoo(x);
        assertEq(counter.foo(), x);
    }

    // fuzz test
    function testFuzz_setWord(string memory x) public {
        counter.setBar(x);
        assertEq(counter.bar(), x);
    }
}
