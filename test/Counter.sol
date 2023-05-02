// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;

    function setUp() public {
        counter = new Counter(0, 0, "bar");
    }

    function testIncrement() public {
        counter.incrementVal1();
        assertEq(counter.val1(), 1);
    }

    // fuzz test
    function testFuzz_setNumber(uint256 x) public {
        counter.setVal1(x);
        assertEq(counter.val1(), x);
    }

    // fuzz test
    function testFuzz_setWord(string memory x) public {
        counter.setWord(x);
        assertEq(counter.word(), x);
    }

    // invariant tests are denoted by prefixing the function name with invariant
    function invariant_val2() public {
        assertEq(counter.val2(), 0);
    }
}
