pragma solidity 0.8.19;

import "forge-std/Test.sol";
import "../src/SomeA.sol";

contract SomeA_test is Test {
    SomeA public token;
    
    function setUp() public {
        token = new SomeA("foo", "bar");
        token.mint();
    }

    function testTransfer() public {
        token.transferFrom(address(this), address(0x11111111111111111111), 0);
    }

    function testMintMultiple() public {
        token.mintMultiple();
    }
}