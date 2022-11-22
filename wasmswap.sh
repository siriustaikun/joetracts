KEY="validator" # reece's val -> joe1s0xssdta4f6jys52pt44yw306vs0skrf67pas7

# Reece set himself as admin for now, will transfer to the DAO later once it is up.

# CW20 code id: 8

# https://github.com/Wasmswap/wasmswap-contracts/blob/main/src/contract.rs

joed tx wasm store wasmswap.wasm --from $KEY --gas 5000000 --chain-id tree --node https://rpc.justjoe.app:443 --yes --chain-id joe-1
# E589205F4F32CAD66CE5AC87040F466FFD45D5A685C895D1102D318519C5AED5 # code id 7


joed tx wasm instantiate 10 '{"token1_denom":{"native":"ujoe"},"token2_denom":{"native":"ibc/8968C04A87BA43FB662C51D4088D693CF44761EF8D1BD953526BDFFD48BD9005"},"lp_token_code_id":9,"protocol_fee_recipient":"joe1s0xssdta4f6jys52pt44yw306vs0skrf67pas7","protocol_fee_percent":"0.00","lp_fee_percent":"0.75"}' --label "joe-stars" --admin joe1s0xssdta4f6jys52pt44yw306vs0skrf67pas7 --from $KEY --node https://rpc.justjoe.app:443 --yes --chain-id joe-1 --gas 5000000 --amount 10ujoe,10ibc/8968C04A87BA43FB662C51D4088D693CF44761EF8D1BD953526BDFFD48BD9005
# joed q tx 5B4773AB19557727C36C1FACB05522E499A78B92805777197936D291ED96E9D7
# Joe-Stars joe1999u8suptza3rtxwk7lspve02m406xe7l622erg3np3aq05gawxsl66ce0
# Liquidity Share CW20: joe1g6kht9c5s4jwn4akfjt3zmsfh4nvguewaegjeavpz3f0q9uylrqs4qy0ua


joed q wasm contract-state smart joe1999u8suptza3rtxwk7lspve02m406xe7l622erg3np3aq05gawxsl66ce0 '{"info":{}}'
joed q wasm contract-state smart joe1g6kht9c5s4jwn4akfjt3zmsfh4nvguewaegjeavpz3f0q9uylrqs4qy0ua '{"token_info":{}}' # CW20 token for the liquidty share


# send initial liqdity to here some how?
joed tx bank send $KEY joe1zlwdkv49rmsug0pnwu6fmwnl267lfr34smmfyer9dvakpnk29whq5ft8ug 10000ibc/8968C04A87BA43FB662C51D4088D693CF44761EF8D1BD953526BDFFD48BD9005,10000ujoe


# test adding liquidity
joed tx wasm execute joe1zlwdkv49rmsug0pnwu6fmwnl267lfr34smmfyer9dvakpnk29whq5ft8ug '{"add_liquidity":{"token1_amount":10000,"min_liquidity":1,"max_token2":100000000}}' --amount 10000ujoe,10000ibc/8968C04A87BA43FB662C51D4088D693CF44761EF8D1BD953526BDFFD48BD9005 --from $KEY --chain-id joe-1