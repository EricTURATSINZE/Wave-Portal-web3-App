// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    address[] public allVotes;

    constructor() {
        console.log("Hello friends, I am a contract and I am smart");
    }

    function wave() public {
        allVotes.push(msg.sender);
        console.log("%s has waved!", msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", allVotes.length);
        return allVotes.length;
    }
}
