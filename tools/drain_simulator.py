
#!/usr/bin/env python3
# Simulates a vault draining exploit on testnet (safe mode)
def simulate_drain(vault_balance_eth, gas_fee_eth):
    payout = vault_balance_eth - gas_fee_eth
    print(f"[SIMULATION] Draining Vault...")
    print(f"Vault had: {vault_balance_eth} ETH")
    print(f"Gas cost: {gas_fee_eth} ETH")
    print(f"Simulated profit: {payout} ETH")

if __name__ == "__main__":
    simulate_drain(vault_balance_eth=50.0, gas_fee_eth=0.8)
