// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/**
 * @title GalacticRegistry
 * @dev Mission: Register your ship in the interstellar database.
 */
contract GalacticRegistry {

    // 1. DATA STORAGE
    // Create a mapping that links an address to a string (the Pilot Name)
    mapping(address => string) public registry;

    // Create a mapping that links an address to a boolean (to track if they already registered)
    mapping(address => bool) public hasRegistered;

    // 2. EVENTS
    // This event must be emitted when a registration is successful
    event Registered(address indexed pilot, string name);

    /**
     * @notice Registers a pilot with a unique name.
     * @param _name The name of the pilot.
     */
    function register(string memory _name) public {
        // --- STEP 1: VALIDATION ---
        // REQUIRE: The name must not be an empty string ""
        // Hint: bytes(_name).length should be greater than 0
        

        // REQUIRE: The msg.sender must NOT have registered before
        // Check your 'hasRegistered' mapping
        

        // --- STEP 2: STATE UPDATES ---
        // Update the 'registry' mapping for msg.sender with _name
        

        // Update the 'hasRegistered' mapping for msg.sender to true
        

        // --- STEP 3: EMIT EVENT ---
        // Emit the Registered event with the sender and the name
        
    }

    /**
     * @notice Helper function to get a pilot's name
     */
    function getPilotName(address _pilot) public view returns (string memory) {
        return registry[_pilot];
    }
}
