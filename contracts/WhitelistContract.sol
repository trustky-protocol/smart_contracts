// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract WhitelistContract {
    mapping(address => mapping(bytes32 => mapping(address => bool)))
        public isWhitelisted;

    event WhiteListStatusChanged(
        address indexed whitelister,
        bytes32 indexed msgHash,
        address indexed user,
        bool status
    );

    function changeWhitelistStatus(
        bytes32 msgHash,
        address user,
        bool status
    ) external {
        isWhitelisted[msg.sender][msgHash][user] = status;
    }
}
