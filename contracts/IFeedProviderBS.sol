// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.24;

// Common interface implemented by both DataStorageBS and DerivedData contracts,
// used by the AccessControl contract to read feed data in a uniform way.

/**
 * @title IFeedProviderBS
 * @dev common interface for feed providers to implement
 */
interface IFeedProviderBS {
    /**
     * @dev identifier for a single feed
     */
    struct Feed {
        uint32 id;
        FeedParameters parameters;
    }

    /**
     * @dev parameters for a feed
     */
    struct FeedParameters {
        uint8[] enumerable;
        // If required, additional parameters can be passed as bytes. These
        // should be encoded by the client as one of the struct types defined
        // below.
        bytes other;
    }

    /**
     * @dev output data for a feed
     */
    struct FeedData {
        int64 value;
        uint32 timestamp;
    }

    /**
     * @dev get the latest feed data
     * @param feed the feed to get data for
     * @return the latest feed data
     */
    function getLatestFeedData(
        Feed memory feed
    ) external view returns (FeedData memory);
}
