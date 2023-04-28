pragma solidity 0.8.19;

import "forge-std/Test.sol";
import "../src/SomeOtherA.sol";

contract SomeA_test is Test {
    SomeOtherA public token;
    
    function setUp() public {
        token = new SomeOtherA("foo", "bar");
        token.mintMultiple();
    }

    function testTransferAll() public {
        token.transferAll();
    }
}