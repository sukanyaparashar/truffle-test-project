// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Sample {
  uint256 storedData;

  constructor(uint256 _a) {
    storedData = _a;
  }

  function get() public view returns (uint256) {
    return storedData;
  }

  function get(uint256 x) public view returns (uint256) {
    return storedData + x;
  }

  function get(uint256 x, uint256 y) public view returns (uint256) {
    return storedData + x + y;
  }

  function bad() public pure {
    revert("You are a failure");
  }
}
