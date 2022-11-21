key="validator" # keyring name for joe account, joe1s0xssdta4f6jys52pt44yw306vs0skrf67pas7 here


# === UPLOAD NFTS ===
files=$(ls cw-nfts)
for file in $files
do
  if [[ $file == *.wasm ]]
  then    
    # STORE_HASH=$(joed tx wasm store "cw-nfts/$file" --from $key --yes --chain-id joe-1 --broadcast-mode block --node https://rpc.justjoe.app:443/ --output json  | jq -r '.txhash') # null 568EDF0D4B905F8C783BB8EE93524A23C93D4DF97477E2DCCA9294827BF8C346    
    # sleep 5
    # CODE_ID=$(joed query tx "$STORE_HASH" --output json | jq -r '.logs[0].events[].attributes[] | select(.key == "code_id") | .value')
    # echo "$CODE_ID" "$file"
    echo "joed tx wasm store "cw-nfts/$file" --from $key --yes --chain-id joe-1 --broadcast-mode block --node https://rpc.justjoe.app:443/ --output json  | jq -r '.txhash'"
  fi
done