// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/access/Ownable.sol";

contract Governance is Ownable {
    struct Proposal { string description; uint256 votesFor; bool executed; }
    Proposal[] public proposals;

    constructor() Ownable(msg.sender) {}

    function createProposal(string memory description) external {
        proposals.push(Proposal(description, 0, false));
    }

    function vote(uint256 proposalId, bool support) external {
        if (support) proposals[proposalId].votesFor += 1;
    }
}