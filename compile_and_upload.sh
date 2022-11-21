# run this in a folder

key="validator" # keyring name for joe account, joe1s0xssdta4f6jys52pt44yw306vs0skrf67pas7 here


# Upload contracts to chain
git clone https://github.com/DA0-DA0/dao-contracts.git
cd dao-contracts/

# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

rm -rf ~/.cargo/registry/*

docker run --rm -v "$(pwd)":/code \
  --mount type=volume,source="$(basename "$(pwd)")_cache",target=/code/target \
  --mount type=volume,source=registry_cache,target=/usr/local/cargo/registry \
  cosmwasm/rust-optimizer:0.12.10


# cd cwd-core # https://github.com/DA0-DA0/dao-contracts/tree/main/contracts/cwd-core