// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SliceNFT is ERC721, Ownable {
    uint256 private _nextTokenId;
    constructor() ERC721("Network Slice NFT", "SLICE") Ownable(msg.sender) {}
    function safeMint(address to) public onlyOwner {
        uint256 tokenId = _nextTokenId++;
        _safeMint(to, tokenId);
    }
}