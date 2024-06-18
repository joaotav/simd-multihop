#!/bin/bash
set -e

# Load shell variables
. ./variables.sh

# NOTE: All ClientIds listed here will only apply if no clients or connections existed previously

# Create a client to track chain3 on chain4 (ClientId on chain4 = "07-tendermint-0")
$HERMES_BINARY --config $HERMES_CONFIG_DIR create client --host-chain chain4 --reference-chain chain3

# Create a client to track chain4 on chain3 (ClientId on chain3 = "07-tendermint-0")
$HERMES_BINARY --config $HERMES_CONFIG_DIR create client --host-chain chain3 --reference-chain chain4

# Create a client to track chain2 on chain3 (ClientId on chain3 = "07-tendermint-1")
$HERMES_BINARY --config $HERMES_CONFIG_DIR create client --host-chain chain3 --reference-chain chain2

# Create a client to track chain3 on chain2 (ClientId on chain2 = "07-tendermint-0")
$HERMES_BINARY --config $HERMES_CONFIG_DIR create client --host-chain chain2 --reference-chain chain3

# Create a client to track chain1 on chain2 (ClientId on chain2 = "07-tendermint-1")
$HERMES_BINARY --config $HERMES_CONFIG_DIR create client --host-chain chain2 --reference-chain chain1

# Create a client to track chain2 on chain1 (ClientId on chain1 = "07-tendermint-0")
$HERMES_BINARY --config $HERMES_CONFIG_DIR create client --host-chain chain1 --reference-chain chain2

# Create a client to track chain2 on chain5 (ClientId on chain5 = "07-tendermint-0")
$HERMES_BINARY --config $HERMES_CONFIG_DIR create client --host-chain chain5 --reference-chain chain2

# Create a client to track chain5 on chain2 (ClientId on chain2 = "07-tendermint-2")
$HERMES_BINARY --config $HERMES_CONFIG_DIR create client --host-chain chain2 --reference-chain chain5

# Create a client to track chain3 on chain5 (ClientId on chain5 = "07-tendermint-1")
$HERMES_BINARY --config $HERMES_CONFIG_DIR create client --host-chain chain5 --reference-chain chain3

# Create a client to track chain5 on chain3 (ClientId on chain3 = "07-tendermint-2")
$HERMES_BINARY --config $HERMES_CONFIG_DIR create client --host-chain chain3 --reference-chain chain5

# Create a client to track chain4 on chain5 (ClientId on chain5 = "07-tendermint-2")
$HERMES_BINARY --config $HERMES_CONFIG_DIR create client --host-chain chain5 --reference-chain chain4

# Create a client to track chain5 on chain4 (ClientId on chain5 = "07-tendermint-1")
$HERMES_BINARY --config $HERMES_CONFIG_DIR create client --host-chain chain4 --reference-chain chain5

# Resulting ClientId summary:
# chain1 tracks chain2 with ClientId = "07-tendermint-0"
# chain2 tracks chain1 with ClientId = "07-tendermint-1"
# chain2 tracks chain3 with ClientId = "07-tendermint-0"
# chain2 tracks chain5 with ClientId = "07-tendermint-2"
# chain3 tracks chain4 with ClientId = "07-tendermint-0"
# chain3 tracks chain2 with ClientId = "07-tendermint-1"
# chain3 tracks chain5 with ClientId = "07-tendermint-2"
# chain4 tracks chain3 with ClientId = "07-tendermint-0"
# chain4 tracks chain5 with ClientId = "07-tendermint-1"
# chain5 tracks chain2 with ClientId = "07-tendermint-0"
# chain5 tracks chain3 with ClientId = "07-tendermint-1"
# chain5 tracks chain4 with ClientId = "07-tendermint-2"


