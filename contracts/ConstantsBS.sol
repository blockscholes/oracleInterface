// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.24;

// Constants for identifying feeds used by the Block Scholes Oracle.
library ConstantsBS {
    // Feed IDs
    uint32 internal constant FEED_ID_FUTURE = 1;
    uint32 internal constant FEED_ID_MODEL_PARAMS = 2;
    uint32 internal constant FEED_ID_SPOT = 3;
    uint32 internal constant FEED_ID_INTEREST_RATE = 4;
    uint32 internal constant FEED_ID_SETTLEMENT_PRICE = 5;
    uint32 internal constant FEED_ID_IMPLIED_VOLATILITY = 7;
    uint32 internal constant FEED_ID_OPTION_MARK_PRICE = 8;

    // Enumerable Parameters
    uint8 internal constant EXPIRY_TYPE_TIMESTAMP = 0;
    uint8 internal constant EXPIRY_TYPE_TENOR = 1;

    uint8 internal constant EXCHANGE_BLOCKSCHOLES = 0;
    uint8 internal constant EXCHANGE_DERIBIT = 1;
    uint8 internal constant EXCHANGE_BYBIT = 2;
    uint8 internal constant EXCHANGE_OKX = 3;

    uint8 internal constant BASE_ASSET_BTC = 1;
    uint8 internal constant BASE_ASSET_ETH = 2;

    uint8 internal constant OPTION_TYPE_CALL = 0;
    uint8 internal constant OPTION_TYPE_PUT = 1;

    uint8 internal constant IV_LEVEL_TYPE_STRIKE = 0;
    uint8 internal constant IV_LEVEL_TYPE_MONEYNESS = 1;

    uint8 internal constant SVI_PARAM_A = 0;
    uint8 internal constant SVI_PARAM_B = 1;
    uint8 internal constant SVI_PARAM_RHO = 2;
    uint8 internal constant SVI_PARAM_M = 3;
    uint8 internal constant SVI_PARAM_SIGMA = 4;
}
