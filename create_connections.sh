#!/bin/bash
set -e

# Load shell variables
. ./variables.sh

# NOTE: All ClientIds and ConnectionIds listed for reference
# only apply if no clients or connections existed previously

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

# Create a connection between chain4 and chain3 ("connection-0" on chain4; "connection-0" on chain3)
# chain4 tracks chain3 with ClientId "07-tendermint-0" 
# chain3 tracks chain4 with ClientId "07-tendermint-0"
$HERMES_BINARY --config $HERMES_CONFIG_DIR create connection --a-chain chain4 --a-client 07-tendermint-0 --b-client 07-tendermint-0

# Create a connection between chain3 and chain2 ("connection-1" on chain3; "connection-0" on chain2)
# chain3 tracks chain2 with ClientId "07-tendermint-1" 
# chain2 tracks chain3 with ClientId "07-tendermint-0"
$HERMES_BINARY --config $HERMES_CONFIG_DIR create connection --a-chain chain3 --a-client 07-tendermint-1 --b-client 07-tendermint-0

# Create a connection between chain2 and chain1 ("connection-1" on chain2; "connection-0" on chain1)
# chain2 tracks chain1 with ClientId "07-tendermint-1"
# chain1 tracks chain2 with ClientId "07-tendermint-0"
$HERMES_BINARY --config $HERMES_CONFIG_DIR create connection --a-chain chain2 --a-client 07-tendermint-1 --b-client 07-tendermint-0


# Multi-hop path from chain4 to chain1: 
#
#  +--------+    connection-1   +--------+    connection-1   +--------+    connection-0   +--------+
#  | chain1 | <---------------- | chain2 | <---------------- | chain3 | <---------------- | chain4 |
#  +--------+                   +--------+                   +--------+                   +--------+
#
# 

# Multi-hop path from chain1 to chain4: 
#
#  +--------+    connection-0   +--------+    connection-0   +--------+    connection-0   +--------+
#  | chain1 | ----------------> | chain2 | ----------------> | chain3 | ----------------> | chain4 |
#  +--------+                   +--------+                   +--------+                   +--------+
#
#



