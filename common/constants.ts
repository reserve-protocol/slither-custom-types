import { BigNumber } from 'ethers'

export const ZERO_ADDRESS = '0x0000000000000000000000000000000000000000'

export const ONE_ETH = BigNumber.from('1000000000000000000')

export const MAX_UINT256 = BigNumber.from(2).pow(256).sub(1)
export const MAX_UINT16 = 2 ** 16 - 1

export const SCALE_DECIMALS = 18
export const SCALE_FACTOR = 10 ** SCALE_DECIMALS
export const BN_SCALE_FACTOR = BigNumber.from(SCALE_FACTOR.toString())

// @dev Must match `IMain.AuctionStatus`
export enum AuctionStatus {
  NOT_YET_OPEN,
  OPEN,
  DONE,
}

// @dev Must match `IAsset.CollateralStatus`.
export enum CollateralStatus {
  SOUND,
  IFFY,
  DISABLED,
}

// @dev Must match `Fixed.RoundingApproach`.
export enum RoundingMode {
  FLOOR,
  ROUND,
  CEIL,
}

// @dev Must match `GnosisTrade.TradeStatus`.
export enum TradeStatus {
  NOT_STARTED,
  OPEN,
  CLOSED,
}

export const FURNACE_DEST = '0x0000000000000000000000000000000000000001'
export const STRSR_DEST = '0x0000000000000000000000000000000000000002'