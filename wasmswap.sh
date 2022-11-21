KEY="validator" # reece -> joe1s0xssdta4f6jys52pt44yw306vs0skrf67pas7

# Reece set himself as admin for now, will transfer to the DAO later once it is up.

# CW20 code id: 8

# https://github.com/Wasmswap/wasmswap-contracts/blob/main/src/contract.rs

joed tx wasm store wasmswap.wasm --from $KEY --gas 5000000 --chain-id tree --node https://rpc.justjoe.app:443 --yes --chain-id joe-1
# E589205F4F32CAD66CE5AC87040F466FFD45D5A685C895D1102D318519C5AED5 # code id 7


joed tx wasm instantiate 10 '{"token1_denom":{"native":"ujoe"},"token2_denom":{"native":"ujuno"},"lp_token_code_id":9,"protocol_fee_recipient":"joe1s0xssdta4f6jys52pt44yw306vs0skrf67pas7","protocol_fee_percent":"0.01","lp_fee_percent":"0.3"}' --label "joe-juno" --admin joe1s0xssdta4f6jys52pt44yw306vs0skrf67pas7 --from $KEY --node https://rpc.justjoe.app:443 --yes --chain-id joe-1 --gas 5000000
# joed q tx A41488E0BFC7CE53B4A131B4540C57C4D7B3C8576CA55DA6D90E5D90439EDDE7
# joe1jn8qmdda5m6f6fqu9qv46rt7ajhklg40ukpqchkejcvy8x7w26cqldfzv8


joed q wasm contract-state smart joe1jn8qmdda5m6f6fqu9qv46rt7ajhklg40ukpqchkejcvy8x7w26cqldfzv8 '{"info":{}}'