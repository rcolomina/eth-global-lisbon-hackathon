// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";


contract PriceConsumerV3 {

    AggregatorV3Interface internal priceFeed_BTCUSD;
    AggregatorV3Interface internal priceFeed_DAIUSD;
    AggregatorV3Interface internal priceFeed_ETHUSD;
    AggregatorV3Interface internal priceFeed_EURUSD;
    AggregatorV3Interface internal priceFeed_LINKMATIC;
    AggregatorV3Interface internal priceFeed_LINKUSD;
    AggregatorV3Interface internal priceFeed_MATICUSD;
    AggregatorV3Interface internal priceFeed_SANDUSD;
    AggregatorV3Interface internal priceFeed_SOLUSD;
    AggregatorV3Interface internal priceFeed_USDCUSD;
    AggregatorV3Interface internal priceFeed_USDTUSD;
    
    constructor() {

        priceFeed_BTCUSD = AggregatorV3Interface(
            0x007A22900a3B98143368Bd5906f8E17e9867581b
        );
    
        priceFeed_DAIUSD = AggregatorV3Interface(
            0x0FCAa9c899EC5A91eBc3D5Dd869De833b06fB046
        );

        priceFeed_ETHUSD = AggregatorV3Interface(
            0x0715A7794a1dc8e42615F059dD6e406A6594651A
        );

        priceFeed_EURUSD = AggregatorV3Interface(
            0x7d7356bF6Ee5CDeC22B216581E48eCC700D0497A
        );

        priceFeed_LINKMATIC = AggregatorV3Interface(
            0x12162c3E810393dEC01362aBf156D7ecf6159528
        );

        priceFeed_LINKUSD = AggregatorV3Interface(
            0x1C2252aeeD50e0c9B64bDfF2735Ee3C932F5C408
        );

        priceFeed_MATICUSD = AggregatorV3Interface(
            0xd0D5e3DB44DE05E9F294BB0a3bEEaF030DE24Ada
        );

        priceFeed_SANDUSD = AggregatorV3Interface(
            0xEB0fb293f368cE65595BeD03af3D3f27B7f0BD36
        );

        priceFeed_SOLUSD = AggregatorV3Interface(
            0xEB0fb293f368cE65595BeD03af3D3f27B7f0BD36
        );

        priceFeed_USDCUSD = AggregatorV3Interface(
            0x572dDec9087154dC5dfBB1546Bb62713147e0Ab0
        );

        priceFeed_USDTUSD = AggregatorV3Interface(
            0x92C09849638959196E976289418e5973CC96d645
        );
    }
    
    function getLatestPriceBTCUSD() public view returns (int) {
        (
           /* uint80 roundID */,
            int price,
            /*uint startedAt*/,
            /*uint timeStamp*/,
            /*uint80 answeredInRound*/
        ) = priceFeed_BTCUSD.latestRoundData();
        return price;
    }

    function getLatestPriceDAIUSD() public view returns (int) {
        (
           /* uint80 roundID */,
            int price,
            /*uint startedAt*/,
            /*uint timeStamp*/,
            /*uint80 answeredInRound*/
        ) = priceFeed_DAIUSD.latestRoundData();
        return price;
    }

    function getLatestPriceETHUSD() public view returns (int) {
        (
           /* uint80 roundID */,
            int price,
            /*uint startedAt*/,
            /*uint timeStamp*/,
            /*uint80 answeredInRound*/
        ) = priceFeed_ETHUSD.latestRoundData();
        return price;
    }

    function getLatestPriceEURUSD() public view returns (int) {
        (
           /* uint80 roundID */,
            int price,
            /*uint startedAt*/,
            /*uint timeStamp*/,
            /*uint80 answeredInRound*/
        ) = priceFeed_EURUSD.latestRoundData();
        return price;
    }

    function getLatestPriceLINKMATIC() public view returns (int) {
        (
           /* uint80 roundID */,
            int price,
            /*uint startedAt*/,
            /*uint timeStamp*/,
            /*uint80 answeredInRound*/
        ) = priceFeed_LINKMATIC.latestRoundData();
        return price;
    }

    function getLatestPriceLINKUSD() public view returns (int) {
        (
           /* uint80 roundID */,
            int price,
            /*uint startedAt*/,
            /*uint timeStamp*/,
            /*uint80 answeredInRound*/
        ) = priceFeed_LINKUSD.latestRoundData();
        return price;
    }

    function getLatestPriceMATICUSD() public view returns (int) {
        (
           /* uint80 roundID */,
            int price,
            /*uint startedAt*/,
            /*uint timeStamp*/,
            /*uint80 answeredInRound*/
        ) = priceFeed_MATICUSD.latestRoundData();
        return price;
    }

    function getLatestPriceSANDUSD() public view returns (int) {
        (
           /* uint80 roundID */,
            int price,
            /*uint startedAt*/,
            /*uint timeStamp*/,
            /*uint80 answeredInRound*/
        ) = priceFeed_SANDUSD.latestRoundData();
        return price;
    }

    function getLatestPriceSOLUSD() public view returns (int) {
        (
           /* uint80 roundID */,
            int price,
            /*uint startedAt*/,
            /*uint timeStamp*/,
            /*uint80 answeredInRound*/
        ) = priceFeed_SOLUSD.latestRoundData();
        return price;
    }

  function getLatestPriceUSDCUSD() public view returns (int) {
        (
           /* uint80 roundID */,
            int price,
            /*uint startedAt*/,
            /*uint timeStamp*/,
            /*uint80 answeredInRound*/
        ) = priceFeed_USDCUSD.latestRoundData();
        return price;
    }

  function getLatestPriceUSDTUSD() public view returns (int) {
        (
           /* uint80 roundID */,
            int price,
            /*uint startedAt*/,
            /*uint timeStamp*/,
            /*uint80 answeredInRound*/
        ) = priceFeed_USDTUSD.latestRoundData();
        return price;
    }
}
