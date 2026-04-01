// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "./SliceNFT.sol";                    // ← LINHA NOVA (importante!)

contract StakingContract is ReentrancyGuard, Ownable {
    IERC20 public pntToken;
    SliceNFT public sliceNFT;

    mapping(address => uint256) public stakedBalance;
    uint256 public rewardRate = 200 ether;

    // MOCK ORACLE (simula Chainlink)
    uint256 public mockEthPrice = 3000 * 10 ** 18;

    function updateMockPrice(uint256 newPrice) external onlyOwner {
        mockEthPrice = newPrice;
    }

    constructor(address _token, address _nft) Ownable(msg.sender) {
        pntToken = IERC20(_token);
        sliceNFT = SliceNFT(_nft);
    }

    function stake(uint256 amount) external nonReentrant {
        pntToken.transferFrom(msg.sender, address(this), amount);
        stakedBalance[msg.sender] += amount;
        sliceNFT.safeMint(msg.sender);
    }

    function unstake(uint256 amount) external nonReentrant {
        uint256 reward = 100 ether;
        pntToken.transfer(msg.sender, amount + reward);
        stakedBalance[msg.sender] -= amount;
    }
}