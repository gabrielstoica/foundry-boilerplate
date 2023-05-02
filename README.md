# Foundry Boilerplate

Simple boilerplate for getting started quickly developing Foundry projects.

## Getting started

Make sure to read the [installation guide](https://book.getfoundry.sh/getting-started/installation) if this is the first time when using Foundry. 

Create a new Foundry project based on this template using the following command:

```bash
forge init myProject --template https://github.com/gabrielstoica/foundry-boilerplate/
cd myProject
forge compile
```

## Features 

The `foundry.toml` file contains the most used foundry configurations in order to interact with custom `rpc_endpoints`, verify your smart contracts on `etehrscan` or adjust the `verbosity` level and the amount of fuzz `runs`. 

In order to update the `rpc_endpoints`, create a new `.env` file based on the existing `.env.example` file and customize it to your needs. Currently, there are only two `rpc_endpoints` available: mainnet and goerli:

```bash
[rpc_endpoints]
mainnet = "${MAINNET_RPC_URL}"
goerli = "${GOERLI_RPC_URL}"
```

## Usage

### Compile

Use the following command to compile all the project's smart contracts:

```bash
forge compile
```

### Build

Use the following command to build all the project's smart contracts:

```bash
forge build
```

### Clean

Use the following command to remove the build artifacts and cache directories:

```bash
forge clean
```

### Test

Use the following command to run all the project's tests:

```bash
forge test
```

### Deploy

Use the following command to deploy the smart contract on a testnet/mainnet:

```bash
forge create --rpc-url $GOERLI_RPC_URL \
    --constructor-args 0 0 "bar" \
    --private-key $PRIVATE_KEY \
    --etherscan-api-key $ETHERSCAN_API_KEY \
    --verify \
    src/Counter.sol:Counter
```

or run the deployer script:

```bash
forge script script/Counter.s.sol:Counter --rpc-url $GOERLI_RPC_URL --broadcast --verify -vvvv
```

### If you want to test the deployment process locally:
1. Start [Anvil](https://book.getfoundry.sh/anvil/):
```bash
anvil
```
2. Update the `.env` file with a private key given to you by Anvil.
3. Run the deployment command:
```bash
forge script script/Counter.s.sol:Counter --fork-url http://localhost:8545 --broadcast
```

