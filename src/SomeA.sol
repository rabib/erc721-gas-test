pragma solidity 0.8.19;

import "../lib/ERC721A/contracts/ERC721A.sol";

contract SomeA is ERC721A {
    constructor(string memory name_, string memory symbol_) ERC721A(name_, symbol_) {
        
    }

    function mint() external {
        _mint(msg.sender, 1);
    }

    function mintMultiple() external {
        _mint(msg.sender, 9999);
    }
}