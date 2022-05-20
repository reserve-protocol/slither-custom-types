// SPDX-License-Identifier: BlueOak-1.0.0
pragma solidity ^0.8.9;

type Fix is int192;

function div(uint256 numerator, uint256 divisor) pure returns (uint256) {
    return numerator / divisor;
}

contract FixLib {
    function toUint(Fix x) external pure returns (uint256) {
        return div(uint192(Fix.unwrap(x)), 1e18);
    }
}
