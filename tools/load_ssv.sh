
#!/bin/bash
# Orion SSV Auto Loader Script
# Clones SSV Network smart contracts into Orion kit structure

echo "[+] Cloning SSV Network contracts..."
mkdir -p ../contracts/ssv-network
git clone https://github.com/ssvlabs/ssv-network.git ../contracts/ssv-network

echo "[+] Done. Contracts available at: contracts/ssv-network"
echo "[✓] You can now run:"
echo "    python3 tools/ai_exploit.py contracts/ssv-network/contracts/SSVNetwork.sol"
echo "    ./scripts/fuzz.sh"
