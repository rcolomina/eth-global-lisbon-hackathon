import { syncWriteFile } from "./utils.ts"

import { ethers, upgrades } from "hardhat";

async function main() {

    /// deploying example price comsumer
    const PriceConsumerV3 = await ethers.getContractFactory("PriceConsumerV3");

    console.log("Deploying PriceConsumerV3..");
    
    const priceConsumerV3 = await PriceConsumerV3.deploy();

    await priceConsumerV3.deployed();
    console.log("priceConsumerV3 deployed to:", priceConsumerV3.address);

  /// more deployments at follows ...

}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});