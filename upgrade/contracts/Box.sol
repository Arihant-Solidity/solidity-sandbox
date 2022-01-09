// SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

contract Box {
    uint256 private value;

    event ValueChanged(uint256 newValue);
    event ValueQueried(uint256 value);

    function setValue(uint256 newValue) public {
        value = newValue;
        emit ValueChanged(value);
    }

    function getValue() public view returns (uint256) {
        return value;
    }
}
