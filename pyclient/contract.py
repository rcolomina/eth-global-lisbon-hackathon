from web3 import Web3
import json


rpc = "https://endpoints.omniatech.io/v1/matic/mumbai/public"
rpc = "https://rpc-mumbai.maticvigil.com"


w3 = Web3(Web3.HTTPProvider(rpc))

def get_contract_instance(path, address):
    #print(path)
    with open(path) as f:
        abi = json.load(f)
        abi = abi["abi"]
        print(address)
        print(abi)
        return w3.eth.contract(address=address, abi=abi)



path="../artifacts/contracts/PriceConsumerV3.sol/PriceConsumerV3.json"
address="0x6BF24059E9d6cd5ab05Ee88Bf00c245DA4c614Af"
contract = get_contract_instance(path, address)
print(contract)
tx_hash = contract.functions.getLatestPrice().call()




