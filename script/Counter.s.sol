// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { BaseScript } from "./Base.s.sol";
import "../src/Counter.sol";

/// @notice Deploy the {Counter} contract instance
/// Run this script by "forge script script/Counter.s.sol 1 "bar" --sig "run(uint256,string)" --rpc-url sepolia"
///
/// Notes:
/// - By default, the script will only simulate the contract deployment; Pass the "--broadcast" flag to broadcast it
/// - Optionally pass the "--verify" flag to verify the contract on Etherscan
contract CounterScript is BaseScript {
    function run(uint256 foo, string memory bar) public broadcast returns (Counter counter) {
        counter = new Counter(foo, bar);
    }
}
