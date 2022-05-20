// SPDX-License-Identifier: BlueOak-1.0.0
pragma solidity ^0.8.9;

type Fix is int192;

function _div(uint256 numerator, uint256 divisor) pure returns (uint256) {
    return numerator / divisor;
}

library FixLib {
    function toUint(Fix x) internal pure returns (uint256) {
        return _div(uint192(Fix.unwrap(x)), 1e18);
    }
}
