
#!/bin/bash
# Simple fuzzing automation with Slither and Foundry
slither contracts/VulnerableVault.sol --detect reentrancy
forge test --fuzz
