#!/bin/bash
set -e

# Load shell variables
. ./variables.sh

# Restore keys for chain1
# Add key to enable relayer to pay transaction submission fees on chain1 (the same key must be set on hermes' config.toml under key_name)
echo $RLY_MNEMONIC_1 | $HERMES_BINARY --config $HERMES_CONFIG_DIR keys add --chain chain1 --mnemonic-file /dev/stdin --key-name rly_chain1 --overwrite

echo $WALLET_MNEMONIC_1 | $HERMES_BINARY --config $HERMES_CONFIG_DIR keys add --chain chain1 --mnemonic-file /dev/stdin --key-name wallet1 --overwrite
echo $WALLET_MNEMONIC_2 | $HERMES_BINARY --config $HERMES_CONFIG_DIR keys add --chain chain1 --mnemonic-file /dev/stdin --key-name wallet2 --overwrite

# Restore keys for chain2
# Add key to enable relayer to pay transaction submission fees on chain2 (the same key must be set on hermes' config.toml under key_name)
echo $RLY_MNEMONIC_2 | $HERMES_BINARY --config $HERMES_CONFIG_DIR keys add --chain chain2 --mnemonic-file /dev/stdin --key-name rly_chain2 --overwrite

echo $WALLET_MNEMONIC_3 | $HERMES_BINARY --config $HERMES_CONFIG_DIR keys add --chain chain2 --mnemonic-file /dev/stdin --key-name wallet1 --overwrite
echo $WALLET_MNEMONIC_4 | $HERMES_BINARY --config $HERMES_CONFIG_DIR keys add --chain chain2 --mnemonic-file /dev/stdin --key-name wallet2 --overwrite

# Restore keys for chain3
# Add key to enable relayer to pay transaction submission fees on chain3 (the same key must be set on hermes' config.toml under key_name)
echo $RLY_MNEMONIC_3 | $HERMES_BINARY --config $HERMES_CONFIG_DIR keys add --chain chain3 --mnemonic-file /dev/stdin --key-name rly_chain3 --overwrite

echo $WALLET_MNEMONIC_5 | $HERMES_BINARY --config $HERMES_CONFIG_DIR keys add --chain chain3 --mnemonic-file /dev/stdin --key-name wallet1 --overwrite
echo $WALLET_MNEMONIC_6 | $HERMES_BINARY --config $HERMES_CONFIG_DIR keys add --chain chain3 --mnemonic-file /dev/stdin --key-name wallet2 --overwrite

# Restore keys for chain4
# Add key to enable relayer to pay transaction submission fees on chain4 (the same key must be set on hermes' config.toml under key_name)
echo $RLY_MNEMONIC_4 | $HERMES_BINARY --config $HERMES_CONFIG_DIR keys add --chain chain4 --mnemonic-file /dev/stdin --key-name rly_chain4 --overwrite

echo $WALLET_MNEMONIC_7 | $HERMES_BINARY --config $HERMES_CONFIG_DIR keys add --chain chain4 --mnemonic-file /dev/stdin --key-name wallet1 --overwrite
echo $WALLET_MNEMONIC_8 | $HERMES_BINARY --config $HERMES_CONFIG_DIR keys add --chain chain4 --mnemonic-file /dev/stdin --key-name wallet2 --overwrite

# Restore keys for chain5
# Add key to enable relayer to pay transaction submission fees on chain5 (the same key must be set on hermes' config.toml under key_name)
echo $RLY_MNEMONIC_5 | $HERMES_BINARY --config $HERMES_CONFIG_DIR keys add --chain chain5 --mnemonic-file /dev/stdin --key-name rly_chain5 --overwrite

echo $WALLET_MNEMONIC_9 | $HERMES_BINARY --config $HERMES_CONFIG_DIR keys add --chain chain5 --mnemonic-file /dev/stdin --key-name wallet1 --overwrite
echo $WALLET_MNEMONIC_10 | $HERMES_BINARY --config $HERMES_CONFIG_DIR keys add --chain chain5 --mnemonic-file /dev/stdin --key-name wallet2 --overwrite
