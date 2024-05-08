#!/bin/bash
set -e

# Load shell variables
. ./variables.sh

# NOTE: All ClientIds listed for reference only apply 
# if no clients or connections existed previously

# Create a client to track chain3 on chain4 (ClientId = "07-tendermint-0")
$HERMES_BINARY --config $HERMES_CONFIG_DIR create client --host-chain chain4 --reference-chain chain3


# Create a client to track chain4 on chain3 (ClientId = "07-tendermint-0")
$HERMES_BINARY --config $HERMES_CONFIG_DIR create client --host-chain chain3 --reference-chain chain4


# Create a client to track chain2 on chain3 (ClientId = "07-tendermint-1")
$HERMES_BINARY --config $HERMES_CONFIG_DIR create client --host-chain chain3 --reference-chain chain2


# Create a client to track chain3 on chain2 (ClientId = "07-tendermint-0")
$HERMES_BINARY --config $HERMES_CONFIG_DIR create client --host-chain chain2 --reference-chain chain3


# Create a client to track chain1 on chain2 (ClientId = "07-tendermint-1")
$HERMES_BINARY --config $HERMES_CONFIG_DIR create client --host-chain chain2 --reference-chain chain1


# Create a client to track chain2 on chain1 (ClientId = "07-tendermint-0")
$HERMES_BINARY --config $HERMES_CONFIG_DIR create client --host-chain chain1 --reference-chain chain2

