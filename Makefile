-include .env 

.PHONY: all test deploy

build:; forge build

test:; forge test

install:; forge install OpenZeppelin/openzeppelin-contracts-upgradeable --no-commit && forge install OpenZeppelin/openzeppelin-contracts --no-commit && forge install chainaccelorg/foundry-devops --no-commit
deploy-sepolia:
	@forge script script/DeployBox.s.sol:DeployBox --rpc-url $(SEPOLIA_RPC_URL) --account $(ACCOUNT_NAME) --broadcast --verify --etherscan-api-key $(ETHERSCAN_API_KEY)

deploy-anvil:
	@forge script script/DeployBox.s.sol:DeployBox
 