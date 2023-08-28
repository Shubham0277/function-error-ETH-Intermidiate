// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CustomErrorHandling {
    function checkGreaterThanZero(uint256 number) public pure returns (uint256) {
        // Check if the number is greater than zero
        require(number > 0, "Number must be greater than zero");
        return number * 4;
    }

    function validateNotZero(uint256 number) public pure returns (uint256) {
        // Validate that the number is not zero
        assert(number != 0);
        return number + 2;
    }

    function checkNotAllowed(uint256 number) public pure returns (uint256) {
        // Check if the number is not 7
        if (number == 7) {
            revert("7 is not allowed");
        }
        return number - 1;
    }

    function intentionallyTriggerErrors() public pure {
        // Function to intentionally trigger the error handlers

        // Trigger the require error by passing a negative number
        checkGreaterThanZero(0);

        // Trigger the assert error by passing zero
        validateNotZero(0);

        // Trigger the revert error by passing 88
        checkNotAllowed(88);
    }
}
