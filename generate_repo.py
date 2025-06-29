
#!/usr/bin/env python3
# Generates a bounty hunter repo scaffold

import os

def create_repo(name="OrionBountyRepo"):
    os.makedirs(name, exist_ok=True)
    with open(f"{name}/README.md", "w") as f:
        f.write("# Orion Bounty Repo\n\nThis repo contains white-hat bounty findings.\n")
    with open(f"{name}/POC.md", "w") as f:
        f.write("## Proof of Concept\n\nExploit goes here.\n")
    print(f"[✓] Repo {name} scaffold created.")

if __name__ == "__main__":
    create_repo()
