
#!/usr/bin/env python3
import requests
import re

# Simple GitHub repo scanner to find Solidity files in public DeFi repos
def find_contracts(keyword="vault"):
    url = f"https://api.github.com/search/code?q={keyword}+in:file+language:Solidity"
    headers = {"Accept": "application/vnd.github.v3.text-match+json"}
    response = requests.get(url, headers=headers)
    results = response.json().get("items", [])
    for r in results[:5]:
        print(f"{r['name']} - {r['html_url']}")

if __name__ == "__main__":
    find_contracts()
