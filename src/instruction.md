# Mission: Level 1 - The Galactic Registry

Welcome, Commander. 

Before diving into the Interstellar Vault, all pilots must register their ship in the **Galactic Registry**. 

### Your Objective
Every pilot must register before entering the vault. You are tasked with completing the `register` function in `src/Level1.sol` (the `GalacticRegistry` contract).

### Requirements

1. **Ensure the name is not empty.**
   - In Solidity, you can check string length by converting it to bytes: `bytes(_name).length`.
   - Your contract must revert if a blank string `""` is provided.

2. **Prevent a single address from registering more than once.**
   - You have a mapping `hasRegistered` that links an address to a boolean.
   - Use `require` to verify `msg.sender` hasn't already registered.
   - Once they successfully register, remember to update this mapping!

3. **Record the Data and Emit the Event**
   - Save the pilot's name in the `registry` mapping.
   - Emit the `Registered` event containing the pilot's address and chosen name.

### How to Test
You have been provided with local tests in `test/Level1.t.sol`. 
Run to verify your code locally before pushing:
```bash
forge test
```

*Be warned:* The Judge runs **secret tests** upon `git push` that you cannot see. Think carefully about edge cases!
