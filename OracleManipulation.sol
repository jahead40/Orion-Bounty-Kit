
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IOracle {
    function getPrice() external view returns (uint256);
}

contract OracleManipulation {
    IOracle public oracle;
    address public owner;

    constructor(address _oracle) {
        oracle = IOracle(_oracle);
        owner = msg.sender;
    }

    function manipulate() external {
        require(msg.sender == owner, "Not owner");
        // Simulate manipulation logic here
        // E.g., submit fake price data to oracle or exploit time-weighted average
    }

    function getOraclePrice() external view returns (uint256) {
        return oracle.getPrice();
    }
}
