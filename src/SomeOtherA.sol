pragma solidity 0.8.19;

import "../lib/ERC721A/contracts/ERC721A.sol";

contract SomeOtherA is ERC721A {
    constructor(string memory name_, string memory symbol_) ERC721A(name_, symbol_) {
        
    }

    function mintMultiple() external {
        _mint(msg.sender, 10000);
    }

    function transferAll() external {
        for (uint256 i = 0; i < 10000;) {
            transferFrom(msg.sender, address(0x11111111111111111111), i);
            unchecked {
            ++i;
            }
        }
    }
}