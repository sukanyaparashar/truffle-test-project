// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Sample {
  uint storedData;

  constructor(uint _a) {
    storedData = _a;
  }

  function get() public view returns (uint) {
    return storedData;
  }

  function get(uint y) public view returns (uint) {
    return storedData + y;
  }

  function bad() public pure {
    revert("You are a failure");
  }
}
