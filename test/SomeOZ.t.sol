pragma solidity 0.8.19;

import "forge-std/Test.sol";
import "../src/SomeOZ.sol";

contract SomeOZ_test is Test {
    SomeOZ public token;
    
    function setUp() public {
        token = new SomeOZ("foo", "bar");
        token.mint();
    }

    function testTransfer() public {
        token.transferFrom(address(this), address(0x11111111111111111111), 0);
    }

    function testMintMultiple() public {
        token.mintMultiple();
    }
}