#!/bin/bash
set -e

# Load shell variables
. ./variables.sh

# NOTE: All ClientIds and ConnectionIds listed for reference
# only apply if no clients or connections existed previously

# ClientId summary:
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

# Create connection between chain2 and chain5
$HERMES_BINARY --config $HERMES_CONFIG_DIR create connection --a-chain chain2 --a-client 07-tendermint-2 --b-client 07-tendermint-0

# Create connection between chain3 and chain5
$HERMES_BINARY --config $HERMES_CONFIG_DIR create connection --a-chain chain3 --a-client 07-tendermint-2 --b-client 07-tendermint-1

# Create connection between chain3 and chain5
$HERMES_BINARY --config $HERMES_CONFIG_DIR create connection --a-chain chain3 --a-client 07-tendermint-2 --b-client 07-tendermint-1

# Create connection between chain4 and chain5
$HERMES_BINARY --config $HERMES_CONFIG_DIR create connection --a-chain chain4 --a-client 07-tendermint-1 --b-client 07-tendermint-2

# Create connection between chain4 and chain5
$HERMES_BINARY --config $HERMES_CONFIG_DIR create connection --a-chain chain4 --a-client 07-tendermint-1 --b-client 07-tendermint-2

# Create connection between chain4 and chain5
$HERMES_BINARY --config $HERMES_CONFIG_DIR create connection --a-chain chain4 --a-client 07-tendermint-1 --b-client 07-tendermint-2

# Create connection between chain3 and chain4
$HERMES_BINARY --config $HERMES_CONFIG_DIR create connection --a-chain chain3 --a-client 07-tendermint-0 --b-client 07-tendermint-0

# Create connection between chain3 and chain5
$HERMES_BINARY --config $HERMES_CONFIG_DIR create connection --a-chain chain3 --a-client 07-tendermint-2 --b-client 07-tendermint-1

# Create connection between chain2 and chain3
$HERMES_BINARY --config $HERMES_CONFIG_DIR create connection --a-chain chain2 --a-client 07-tendermint-0 --b-client 07-tendermint-1

# Create connection between chain2 and chain5
$HERMES_BINARY --config $HERMES_CONFIG_DIR create connection --a-chain chain2 --a-client 07-tendermint-2 --b-client 07-tendermint-0

# Create connection between chain2 and chain5
$HERMES_BINARY --config $HERMES_CONFIG_DIR create connection --a-chain chain2 --a-client 07-tendermint-2 --b-client 07-tendermint-0

# Create connection between chain2 and chain5
$HERMES_BINARY --config $HERMES_CONFIG_DIR create connection --a-chain chain2 --a-client 07-tendermint-2 --b-client 07-tendermint-0

# Create connection between chain2 and chain1
$HERMES_BINARY --config $HERMES_CONFIG_DIR create connection --a-chain chain2 --a-client 07-tendermint-1 --b-client 07-tendermint-0


# For ease of visualization, the following unique connections can be used when testing operations on multihop channels:

#  Connection path from chain1 to chain4: 

#   +--------+    connection-0   +--------+    connection-1   +--------+    connection-2   +--------+
#   | chain1 | ----------------> | chain2 | ----------------> | chain3 | ----------------> | chain4 |
#   +--------+                   +--------+                   +--------+                   +--------+

#  Connection path from chain4 to chain1: 

#   +--------+    connection-5   +--------+    connection-4   +--------+    connection-3   +--------+
#   | chain1 | <---------------- | chain2 | <---------------- | chain3 | <---------------- | chain4 |
#   +--------+                   +--------+                   +--------+                   +--------+

 

