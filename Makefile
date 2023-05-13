node:
	npx hardhat node

deploy:
	npx hardhat run --network localhost scripts/deploy.ts

deploy-mumbay:
	npx hardhat run --network polygon_mumbai scripts/deploy.ts 

export-abi:
	npm install --save-dev hardhat-abi-exporter

install-tool-box:
	npm install --save-dev @nomicfoundation/hardhat-toolbox

compile:
	npx hardhat compile
