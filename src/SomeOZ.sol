pragma solidity 0.8.19;

import "../lib/openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";

contract SomeOZ is ERC721 {
    constructor(string memory name_, string memory symbol_) ERC721(name_, symbol_) {

    }

    function mint() external {
        _mint(msg.sender, 0);
    }

    function mintMultiple() external {
        // this will mint 99 NFTs
        for(uint256 i = 1; i < 101;) {
            _mint(msg.sender, i);
            unchecked {
                ++i;
            }
        }
    }

}