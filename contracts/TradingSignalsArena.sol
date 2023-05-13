// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract TradingSignalsArena {


  //--------------------------------------------------------------------
    /** ERRORS */

  //--------------------------------------------------------------------
    /** EVENTS */

  //--------------------------------------------------------------------
    /** FUNCTIONS */

  function getTokenPrice(address token)
        public
        view
        returns (uint256 tokenDaiPrice) {

      //tokenDaiPrice = supportedTokens[token].lastDaiPriceKnown;

        // TODO: Add price feed oracle        
        /*AggregatorV3Interface priceFeed = AggregatorV3Interface(
            supportedTokens[token].daiPriceFeed
        );
        (, int256 price, , , ) = priceFeed.latestRoundData();
        uint256 decimals = priceFeed.decimals();
        return uint256(price) / 10**decimals;*/
    }


  //--------------------------------------------------------------------
    /** INTERNAL FUNCTIONS */


  //--------------------------------------------------------------------
    /** OWNER FUNCTIONS */

}
