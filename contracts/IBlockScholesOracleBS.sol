// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.24;

import {IFeedProviderBS} from "./IFeedProviderBS.sol";

/**
 * @title IBlockScholesOracleBS
 * @notice the public interface for the Oracle as a whole
 */
interface IBlockScholesOracleBS is IFeedProviderBS {
    /**
     * @notice The feed parameters for the option price and SVI feeds -
     *         these should be abi encoded and passed in as the "other"
     *         feed parameters.
     */
    struct OptionParameters {
        int64 expiry;
        int64 ivLevelValue;
    }

    // Custom Errors

    /**
     * @notice error emitted when a route does not exist for the specified
     *         feed ID
     */
    error RouteDoesNotExist();

    /**
     * @notice error emitted when a feed provider cannot be found for the
     *         specified feed ID
     * @dev this indicates a configuration error with how the route was set up
     */
    error FeedProviderDoesNotExist();

    /**
     * @notice error emitted when a client does not have permission to access
     *         the specified feed.
     * @dev permissions are based on the feed ID and enumerable feed parameters
     */
    error PermissionDenied();
}
