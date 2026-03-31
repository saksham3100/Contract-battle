// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import "../src/Level1.sol";

contract Level1Test is Test {
    GalacticRegistry public registry;

    function setUp() public {
        registry = new GalacticRegistry();
    }

    function test_InitialRegistration() public {
        registry.register("Star-Lord");
        assertEq(registry.getPilotName(address(this)), "Star-Lord");
    }

    function test_CheckRegistrationStatus() public {
        registry.register("Gamora");
        assertTrue(registry.hasRegistered(address(this)));
    }
}