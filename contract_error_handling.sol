// SPDX-License-Identifier: MIT
pragma solidity ^0.8;
contract ErrorHandling {
    function checkValue(uint256 value) external pure returns (bool) {
        // Using require statement
        require(value > 10, "Value must be greater than 10");

        // Using assert statement
        uint256 result = value * 2;
        assert(result >= value);

        // Using revert statement
        if (value == 56) {
            revert("The value cannot be 56");
        }

        return true;
    }
}
