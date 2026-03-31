# 🏆 Galactic Leaderboard

*The bravest pilots in the galaxy are recorded here.*

<!-- LEADERBOARD_START -->
<!-- LEADERBOARD_END -->

---

# Interstellar Vault 🚀

Welcome, spacefarer, to the Interstellar Vault! This is a competitive, level-based smart contract challenge designed to test your Solidity hacking and development skills.

## How to Play

1. **Fork this repository** to your own GitHub account.
2. Clone your fork locally to begin your journey:
   ```bash
   git clone https://github.com/YOUR_USERNAME/Contract-battle.git
   cd Contract-battle
   ```
3. Initialize the development environment. You will need [Foundry](https://book.getfoundry.sh/getting-started/installation):
   ```bash
   # Initialize git submodules for forge-std
   git submodule update --init --recursive
   ```
4. **Mission Briefing:** Read your current mission instructions here: [instructions/Level1.md](instructions/Level1.md).
5. Run the local tests to ensure your baseline logic is correct:
   ```bash
   forge test
   ```
6. **Submit using The CLI:** When you are ready to face the Judge, do not use `git push`. Instead, open your terminal and simply run:
   ```bash
   ./submit.sh
   ```
   You will be prompted for your Pilot Name.
7. **The Galactic Judge:** Your terminal will securely transmit your code to the Central Judge. 
   - A radar ping will appear in your terminal. The Judge is currently compiling and running **secret edge-case tests** against your smart contract.
   - If you pass, your terminal will announce `ACCESS GRANTED` and the Judge will autonomously drop the `Level2.sol` file straight onto your hard drive! 
   - Your name will also be permanently etched into the Leaderboard above.
   - If you fail, access is denied. Examine your code locally and try again!
