// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract functionsanderror {
    uint256 public nums;

    constructor(uint256 _initialValue) {
        nums = _initialValue;
    }

    function updateValue(uint256 _newnum) external {
        require(_newnum > 0, "New Number  must be more than zero");
        nums = _newnum;
    }

    function getCurrentValue() external view returns (uint256) {
        return nums;
    }

    function removeAmount(uint256 _amount) external {
        require(_amount <= nums, "Amount has been crossed the limit ");
        nums -= _amount;

        if (nums == 0) {
            revert("Number has been reached upto the zero");
        }
    }
}
