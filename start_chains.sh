#!/bin/bash
set -e

# Load shell variables
. ./variables.sh

echo "Starting $CHAINID_1 in $CHAIN_DIR..."
echo "Creating log file at $CHAIN_DIR/$CHAINID_1.log"
$BINARY start --log_level info --log_format json --home $CHAIN_DIR/$CHAINID_1 --pruning=nothing --grpc.address="0.0.0.0:$GRPCPORT_1" > $CHAIN_DIR/$CHAINID_1.log 2>&1 &

echo "Starting $CHAINID_2 in $CHAIN_DIR..."
echo "Creating log file at $CHAIN_DIR/$CHAINID_2.log"
$BINARY start --log_level info --log_format json --home $CHAIN_DIR/$CHAINID_2 --pruning=nothing --grpc.address="0.0.0.0:$GRPCPORT_2" > $CHAIN_DIR/$CHAINID_2.log 2>&1 &

echo "Starting $CHAINID_3 in $CHAIN_DIR..."
echo "Creating log file at $CHAIN_DIR/$CHAINID_3.log"
$BINARY start --log_level info --log_format json --home $CHAIN_DIR/$CHAINID_3 --pruning=nothing --grpc.address="0.0.0.0:$GRPCPORT_3" > $CHAIN_DIR/$CHAINID_3.log 2>&1 &

echo "Starting $CHAINID_4 in $CHAIN_DIR..."
echo "Creating log file at $CHAIN_DIR/$CHAINID_4.log"
$BINARY start --log_level info --log_format json --home $CHAIN_DIR/$CHAINID_4 --pruning=nothing --grpc.address="0.0.0.0:$GRPCPORT_4" > $CHAIN_DIR/$CHAINID_4.log 2>&1 &

echo -e "\nWaiting for chains to be fully initialized...\n"

sleep 10
