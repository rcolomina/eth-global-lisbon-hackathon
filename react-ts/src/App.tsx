import React from 'react';
import logo from './logo.svg';
import './App.css';

import { ethers } from 'ethers'
import { useState, useEffect } from 'react';

//import { contractABI } from "../artifacts/contracts/PriceConsumerV3.sol/PriceConsumerV3.json";

async function getLatestPrice() {
  const contractAddress = '0x6BF24059E9d6cd5ab05Ee88Bf00c245DA4c614Af';
  //const contractABI =  ['../artifacts/contracts/PriceConsumerV3.sol/PriceConsumerV3.json'];
  const contractABI = [
    {
      "inputs": [],
      "stateMutability": "nonpayable",
      "type": "constructor"
    },
    {
      "inputs": [],
      "name": "getLatestPrice",
      "outputs": [
        {
          "internalType": "int256",
          "name": "",
          "type": "int256"
        }
      ],
      "stateMutability": "view",
      "type": "function"
    }];
  


  try {
    // Connect to the contract using the provider
    //const rpc_url = "https://rpc-mumbai.maticvigil.com"
    const rpc_url = "https://endpoints.omniatech.io/v1/matic/mumbai/public";
    const provider = new ethers.providers.JsonRpcProvider(rpc_url); 
    
    const contract = new ethers.Contract(contractAddress, contractABI, provider);

    // Call the contract function to get the value
    console.log("trying to get latest price");
    console.log("contract address",contract.address);
    //console.log(contract.functions.getLatestPrice());
    //console.log()
    const value = await contract.functions.getLatestPrice();
    console.log(value);



    console.log('getLatestPrice:', value.toString());
  } catch (error) {
    console.error('Error:', error);
  }
}

const AssetPriceContext = () => {
  useEffect(() => {
    getLatestPrice();
  }, []);

  return <div>from asset price context</div>;
};

function App() {



  return (
    <div className="App">
      <p>contract address: </p>
      <AssetPriceContext/>
    </div>
  );
}

export default App;
