// SPDX-License-Identifier: BlueOak-1.0.0
pragma solidity ^0.8.9;

import "../Fixed.sol";

// Simple mock for Fixed library.
// prettier-ignore
contract FixedCallerMock {
    function toFix_(uint256 x) public pure returns (Fix) {
        return toFix(x);
    }
    function shiftl_toFix_(uint256 x, int8 d) public pure returns (Fix) {
        return shiftl_toFix(x, d);
    }
    function shiftl_toFix_Rnd(uint256 x, int8 d, RoundingMode rnd) public pure returns (Fix) {
        return shiftl_toFix(x, d, rnd);
    }

    function divFix_(uint256 x, Fix y) public pure returns (Fix) {
        return divFix(x, y);
    }
    function fixMin_(Fix x, Fix y) public pure returns (Fix) {
        return fixMin(x, y);
    }
    function fixMax_(Fix x, Fix y) public pure returns (Fix) {
        return fixMax(x, y);
    }
    function signOf_(int256 x) public pure returns (int8) {
        return signOf(x);
    }
    function abs_(int256 x) public pure returns (uint256) {
        return abs(x);
    }
    function divrnd_(int256 n, int256 d, RoundingMode rnd) public pure returns (int256) {
        return _divrnd(n, d, rnd);
    }
    function divrnd_u(uint256 n, uint256 d, RoundingMode rnd) public pure returns (uint256) {
        return _divrnd(n, d, rnd);
    }
    function toUint(Fix x) public pure returns (uint192) {
        return FixLib.toUint(x);
    }
    function toUintRnd(Fix x, RoundingMode rnd) public pure returns (uint192) {
        return FixLib.toUint(x, rnd);
    }
    function shiftl(Fix x, int8 decimals) public pure returns (Fix) {
        return FixLib.shiftl(x, decimals);
    }
    function shiftlRnd(Fix x, int8 decimals, RoundingMode rnd) public pure returns (Fix) {
        return FixLib.shiftl(x, decimals, rnd);
    }
    function plus(Fix x, Fix y) public pure returns (Fix) {
        return FixLib.plus(x, y);
    }
    function plusu(Fix x, uint256 y) public pure returns (Fix) {
        return FixLib.plusu(x, y);
    }
    function minus(Fix x, Fix y) public pure returns (Fix) {
        return FixLib.minus(x, y);
    }
    function minusu(Fix x, uint256 y) public pure returns (Fix) {
        return FixLib.minusu(x, y);
    }
    function mul(Fix x, Fix y) public pure returns (Fix) {
        return FixLib.mul(x, y);
    }
    function mulRnd(Fix x, Fix y, RoundingMode rnd) public pure returns (Fix) {
        return FixLib.mul(x, y, rnd);
    }
    function mulu(Fix x, uint256 y) public pure returns (Fix) {
        return FixLib.mulu(x, y);
    }
    function div(Fix x, Fix y) public pure returns (Fix) {
        return FixLib.div(x, y);
    }
    function divRnd(Fix x, Fix y, RoundingMode rnd) public pure returns (Fix) {
        return FixLib.div(x, y, rnd);
    }
    function divu(Fix x, uint256 y) public pure returns (Fix) {
        return FixLib.divu(x, y);
    }
    function divuRnd(Fix x, uint256 y, RoundingMode rnd) public pure returns (Fix) {
        return FixLib.divu(x, y, rnd);
    }
    function powu(Fix x, uint32 y) public pure returns (Fix) {
        return FixLib.powu(x, y);
    }
    function lt(Fix x, Fix y) public pure returns (bool) {
        return FixLib.lt(x, y);
    }
    function lte(Fix x, Fix y) public pure returns (bool) {
        return FixLib.lte(x, y);
    }
    function gt(Fix x, Fix y) public pure returns (bool) {
        return FixLib.gt(x, y);
    }
    function gte(Fix x, Fix y) public pure returns (bool) {
        return FixLib.gte(x, y);
    }
    function eq(Fix x, Fix y) public pure returns (bool) {
        return FixLib.eq(x, y);
    }
    function neq(Fix x, Fix y) public pure returns (bool) {
        return FixLib.neq(x, y);
    }
    function near(Fix x, Fix y, Fix epsilon) public pure returns (bool) {
        return FixLib.near(x, y, epsilon);
    }

    // ================ chained operations
    function shiftl_toUint(Fix x, int8 d) public pure returns (uint256) {
        return FixLib.shiftl_toUint(x, d);
    }
    function shiftl_toUintRnd(Fix x, int8 d, RoundingMode rnd) public pure returns (uint256) {
        return FixLib.shiftl_toUint(x, d, rnd);
    }
    function mulu_toUint(Fix x, uint256 y) public pure returns (uint256) {
        return FixLib.mulu_toUint(x, y);
    }
    function mulu_toUintRnd(Fix x, uint256 y, RoundingMode rnd) public pure returns (uint256) {
        return FixLib.mulu_toUint(x, y, rnd);
    }
    function mul_toUint(Fix x, Fix y) public pure returns (uint256) {
        return FixLib.mul_toUint(x, y);
    }
    function mul_toUintRnd(Fix x, Fix y, RoundingMode rnd) public pure returns (uint256) {
        return FixLib.mul_toUint(x, y, rnd);
    }
    function muluDivu(Fix x, uint256 y, uint256 z) public pure returns (Fix) {
        return FixLib.muluDivu(x, y, z);
    }
    function muluDivuRnd(Fix x, uint256 y, uint256 z, RoundingMode rnd) public pure returns (Fix) {
        return FixLib.muluDivu(x, y, z, rnd);
    }
    function mulDiv(Fix x, Fix y, Fix z) public pure returns (Fix) {
        return FixLib.mulDiv(x, y, z);
    }
    function mulDivRnd(Fix x, Fix y, Fix z, RoundingMode rnd) public pure returns (Fix) {
        return FixLib.mulDiv(x, y, z, rnd);
    }

    // ================ wide muldiv operations
    function mulDiv256_(uint256 x, uint256 y, uint256 z) public pure returns (uint256) {
        return mulDiv256(x, y, z);
    }
    function mulDiv256Rnd_(uint256 x, uint256 y, uint256 z, RoundingMode rnd)
        public pure returns (uint256) {
        return mulDiv256(x, y, z, rnd);
    }
    function fullMul_(uint256 x, uint256 y) public pure returns (uint256 l, uint256 h) {
        return fullMul(x, y);
    }


}
