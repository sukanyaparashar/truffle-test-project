// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Sample {
  uint256 public storedData;

  constructor(uint256 _a) public {
    storedData = _a;
  }

  function setNewValue(uint256 x) public {
    storedData = x;
  }

  function get() public view returns (uint256) {
    return storedData;
  }

  function get(uint256 x) public view returns (uint256) {
    return storedData + x;
  }

  function get(string memory s) public pure returns (string memory) {
    return s;
  }

  function get(uint256 x, uint256 y) public view returns (uint256) {
    return storedData + x + y;
  }

  function getRevertMessage() public pure {
    revert("You are a failure");
  }

  function getPanicMessage() public pure {
    assert(0 == 1);
  }

  function getNoReturnValue(uint256 x) public view {
    uint256 y;
    y = storedData + x;
  }

  function getMultipleValues() public pure returns (string memory, uint256) {
    return ("truffle", 20);
  }
}
