pragma solidity 0.8.19;

import "../lib/openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";

contract SomeOtherOZ is ERC721 {
    constructor(string memory name_, string memory symbol_) ERC721(name_, symbol_) {

    }

    function mintMultiple() external {
        // this will mint 9999 NFTs
        for(uint256 i = 0; i < 10000;) {
            _mint(msg.sender, i);
            unchecked {
                ++i;
            }
        }
    }

    function transferAll() external {
        for (uint256 i = 0; i < 10000;) {
            _transfer(msg.sender, address(0x11111111111111111111), i);
            unchecked {
            ++i;
            }
        }
    }

}