// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/Counter.sol";

contract CounterScript is Script {
    function run() public {
        // load the private key from the .env file
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");

        // use the private key to sign the transactions
        vm.startBroadcast(deployerPrivateKey);

        // create the Counter contract instance
        // the contract creation will be recorded by Forge
        Counter counter = new Counter(0, 0, "bar");

        // stop collecting transactions for later on-chain broadcasting
        vm.stopBroadcast();
    }
}
