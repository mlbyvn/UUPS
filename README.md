# UUPS

Sample small UUPS contract.

## Description

This project implements an apgradable contract using Openzeppelin UUPS proxy. 
Conventional opinion- proxies are bad, since a centralized entity can change the contract logic and corrupt the decentralization principles.

## Getting Started

### Dependencies

* [foundry](https://github.com/foundry-rs) 
* 1. Run to install all libraries:
```
make install
```

### Installing

* Add an .env file, in order to be able to deploy on sepolia using makefile
    * SEPOLIA_RPC_URL: sepolia rpc url 
    * ETHERSCAN_API_KEY: etherscan api key
    * ACCOUNT_NAME: pre-setup account (cast wallet import)

### Executing program

* Build:
```
make build
```
* Tests on anvil:
```
make test
```
* Install dependencies:
```
make install
```
* Deploy on anvil:
```
make deploy-anvil
```
* Deploy on sepolia:
```
make deploy-sepolia
```

## Authors

Aleksandr Rybin  
