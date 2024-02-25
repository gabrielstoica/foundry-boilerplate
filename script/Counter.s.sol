// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { BaseScript } from "./Base.s.sol";
import "../src/Counter.sol";

// Run this script by "forge script script/Counter.s.sol 1 "bar" --sig "run(uint256,string)" --rpc-url sepolia"
contract CounterScript is BaseScript {
    function run(uint256 foo, string memory bar) public broadcast returns (Counter counter) {
        // create the Counter contract instance
        // the contract creation will be recorded by Forge
        counter = new Counter(foo, bar);
    }
}
