# Solidity API

## ConstantsBS

### FEED_ID_FUTURE

```solidity
uint32 FEED_ID_FUTURE
```

### FEED_ID_MODEL_PARAMS

```solidity
uint32 FEED_ID_MODEL_PARAMS
```

### FEED_ID_SPOT

```solidity
uint32 FEED_ID_SPOT
```

### FEED_ID_INTEREST_RATE

```solidity
uint32 FEED_ID_INTEREST_RATE
```

### FEED_ID_SETTLEMENT_PRICE

```solidity
uint32 FEED_ID_SETTLEMENT_PRICE
```

### FEED_ID_IMPLIED_VOLATILITY

```solidity
uint32 FEED_ID_IMPLIED_VOLATILITY
```

### FEED_ID_OPTION_MARK_PRICE

```solidity
uint32 FEED_ID_OPTION_MARK_PRICE
```

### FEED_ID_SPOT_EQUITY

```solidity
uint32 FEED_ID_SPOT_EQUITY
```

### EXPIRY_TYPE_TIMESTAMP

```solidity
uint8 EXPIRY_TYPE_TIMESTAMP
```

### EXPIRY_TYPE_TENOR

```solidity
uint8 EXPIRY_TYPE_TENOR
```

### EXCHANGE_BLOCKSCHOLES

```solidity
uint8 EXCHANGE_BLOCKSCHOLES
```

### EXCHANGE_DERIBIT

```solidity
uint8 EXCHANGE_DERIBIT
```

### EXCHANGE_BYBIT

```solidity
uint8 EXCHANGE_BYBIT
```

### EXCHANGE_OKX

```solidity
uint8 EXCHANGE_OKX
```

### BASE_ASSET_BTC

```solidity
uint8 BASE_ASSET_BTC
```

### BASE_ASSET_ETH

```solidity
uint8 BASE_ASSET_ETH
```

### BASE_ASSET_SPY

```solidity
uint8 BASE_ASSET_SPY
```

### BASE_ASSET_IBIT

```solidity
uint8 BASE_ASSET_IBIT
```

### OPTION_TYPE_CALL

```solidity
uint8 OPTION_TYPE_CALL
```

### OPTION_TYPE_PUT

```solidity
uint8 OPTION_TYPE_PUT
```

### IV_LEVEL_TYPE_STRIKE

```solidity
uint8 IV_LEVEL_TYPE_STRIKE
```

### IV_LEVEL_TYPE_MONEYNESS

```solidity
uint8 IV_LEVEL_TYPE_MONEYNESS
```

### SVI_PARAM_A

```solidity
uint8 SVI_PARAM_A
```

### SVI_PARAM_B

```solidity
uint8 SVI_PARAM_B
```

### SVI_PARAM_RHO

```solidity
uint8 SVI_PARAM_RHO
```

### SVI_PARAM_M

```solidity
uint8 SVI_PARAM_M
```

### SVI_PARAM_SIGMA

```solidity
uint8 SVI_PARAM_SIGMA
```

## IFeedProviderBS

_common interface for feed providers to implement_

### Feed

_identifier for a single feed_

```solidity
struct Feed {
  uint32 id;
  struct IFeedProviderBS.FeedParameters parameters;
}
```

### FeedParameters

_parameters for a feed_

```solidity
struct FeedParameters {
  uint8[] enumerable;
  bytes other;
}
```

### FeedData

_output data for a feed_

```solidity
struct FeedData {
  int64 value;
  uint32 timestamp;
}
```

### getLatestFeedData

```solidity
function getLatestFeedData(struct IFeedProviderBS.Feed feed) external view returns (struct IFeedProviderBS.FeedData)
```

_get the latest feed data_

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| feed | struct IFeedProviderBS.Feed | the feed to get data for |

#### Return Values

| Name | Type | Description |
| ---- | ---- | ----------- |
| [0] | struct IFeedProviderBS.FeedData | the latest feed data |

## IOracleBS

the public interface for the Oracle as a whole

### OptionParameters

The feed parameters for the option price and SVI feeds -
        these should be abi encoded and passed in as the "other"
        feed parameters.

```solidity
struct OptionParameters {
  int64 expiry;
  int64 ivLevelValue;
}
```

### RouteDoesNotExist

```solidity
error RouteDoesNotExist()
```

error emitted when a route does not exist for the specified
        feed ID

### FeedProviderDoesNotExist

```solidity
error FeedProviderDoesNotExist()
```

error emitted when a feed provider cannot be found for the
        specified feed ID

_this indicates a configuration error with how the route was set up_

### PermissionDenied

```solidity
error PermissionDenied()
```

error emitted when a client does not have permission to access
        the specified feed.

_permissions are based on the feed ID and enumerable feed parameters_

