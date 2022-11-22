KEY="validator" # reece's val -> joe1s0xssdta4f6jys52pt44yw306vs0skrf67pas7

# Reece set himself as admin for now, will transfer to the DAO later once it is up.

# CW20 code id: 8

# https://github.com/Wasmswap/wasmswap-contracts/blob/main/src/contract.rs

joed tx wasm store wasmswap.wasm --from $KEY --gas 5000000 --chain-id tree --node https://rpc.justjoe.app:443 --yes --chain-id joe-1
# E589205F4F32CAD66CE5AC87040F466FFD45D5A685C895D1102D318519C5AED5 # code id 7


joed tx wasm instantiate 10 '{"token1_denom":{"native":"ujoe"},"token2_denom":{"native":"ibc/8968C04A87BA43FB662C51D4088D693CF44761EF8D1BD953526BDFFD48BD9005"},"lp_token_code_id":9,"protocol_fee_recipient":"joe1s0xssdta4f6jys52pt44yw306vs0skrf67pas7","protocol_fee_percent":"0.00","lp_fee_percent":"0.75"}' --label "joe-stars" --admin joe1s0xssdta4f6jys52pt44yw306vs0skrf67pas7 --from $KEY --node https://rpc.justjoe.app:443 --yes --chain-id joe-1 --gas 5000000
# joed q tx 5B4773AB19557727C36C1FACB05522E499A78B92805777197936D291ED96E9D7
# Joe-Stars joe1zlwdkv49rmsug0pnwu6fmwnl267lfr34smmfyer9dvakpnk29whq5ft8ug
# Liquidity Share CW20: joe1jue5rlc9dkurt3etr57duutqu7prchqrk2mes2227m52kkrual3qxd9jh5


joed q wasm contract-state smart joe1zlwdkv49rmsug0pnwu6fmwnl267lfr34smmfyer9dvakpnk29whq5ft8ug '{"info":{}}'
joed q wasm contract-state smart joe1jue5rlc9dkurt3etr57duutqu7prchqrk2mes2227m52kkrual3qxd9jh5 '{"token_info":{}}' # CW20 token for the liquidty share


# send initial liqdity to here some how?
joed tx bank send $KEY joe1zlwdkv49rmsug0pnwu6fmwnl267lfr34smmfyer9dvakpnk29whq5ft8ug 10000ibc/8968C04A87BA43FB662C51D4088D693CF44761EF8D1BD953526BDFFD48BD9005,10000ujoe


# test adding liquidity
joed tx wasm execute joe1zlwdkv49rmsug0pnwu6fmwnl267lfr34smmfyer9dvakpnk29whq5ft8ug '{"add_liquidity":{"token1_amount":1,"min_liquidity":50,"max_token2":1}}' --amount 10000ibc/8968C04A87BA43FB662C51D4088D693CF44761EF8D1BD953526BDFFD48BD9005,1000000ujoe --from $KEY --chain-id joe-1