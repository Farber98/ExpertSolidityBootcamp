// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

contract SubOverflow {
    // Modify this function so that on overflow it returns the value 0
    // otherwise it should return x - y
    function subtract(uint256 x, uint256 y) public pure returns (uint256) {
        // Write assembly code that handles overflows
        assembly {
            let res := sub(x, y)
            if lt(res, x) {
                mstore(0x40, res)
            }
            return(0x40, 32)
        }
    }
}
