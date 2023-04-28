pragma solidity 0.8.19;

import "forge-std/Test.sol";
import "../src/SomeOtherOZ.sol";

contract SomeOZ_test is Test {
    SomeOtherOZ public token;
    
    function setUp() public {
        token = new SomeOtherOZ("foo", "bar");
        token.mintMultiple();
    }

    function testTransferAll() public {
        token.transferAll();
    }
}