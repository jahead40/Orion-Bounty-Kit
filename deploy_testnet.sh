
#!/bin/bash
# Foundry script to deploy contract to Sepolia testnet

# Set ENV
export RPC_URL=https://sepolia.infura.io/v3/YOUR_INFURA_KEY
export PRIVATE_KEY=your_private_key_here

# Deploy
forge create ./contracts/VulnerableVault.sol:VulnerableVault --rpc-url $RPC_URL --private-key $PRIVATE_KEY
