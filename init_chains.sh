#!/bin/bash
set -e

# Load shell variables
. ./variables.sh


# Stop if it is already running 
if pgrep -x "$BINARY" >/dev/null; then
    echo "Terminating $BINARY..."
    killall $BINARY
fi

echo "Removing previous data..."
rm -rf $CHAIN_DIR/$CHAINID_1 &> /dev/null
rm -rf $CHAIN_DIR/$CHAINID_2 &> /dev/null
rm -rf $CHAIN_DIR/$CHAINID_3 &> /dev/null
rm -rf $CHAIN_DIR/$CHAINID_4 &> /dev/null

# Add directories for both chains, exit if an error occurs
if ! mkdir -p $CHAIN_DIR/$CHAINID_1 2>/dev/null; then
    echo "Failed to create chain1 folder. Aborting..."
    exit 1
fi

if ! mkdir -p $CHAIN_DIR/$CHAINID_2 2>/dev/null; then
    echo "Failed to create chain2 folder. Aborting..."
    exit 1
fi

if ! mkdir -p $CHAIN_DIR/$CHAINID_3 2>/dev/null; then
    echo "Failed to create chain3 folder. Aborting..."
    exit 1
fi

if ! mkdir -p $CHAIN_DIR/$CHAINID_4 2>/dev/null; then
    echo "Failed to create chain4 folder. Aborting..."
    exit 1
fi


echo "Initializing $CHAINID_1..."
$BINARY init test --home $CHAIN_DIR/$CHAINID_1 --chain-id=$CHAINID_1

echo "Initializing $CHAINID_2..."
$BINARY init test --home $CHAIN_DIR/$CHAINID_2 --chain-id=$CHAINID_2

echo "Initializing $CHAINID_3..."
$BINARY init test --home $CHAIN_DIR/$CHAINID_3 --chain-id=$CHAINID_3

echo "Initializing $CHAINID_4..."
$BINARY init test --home $CHAIN_DIR/$CHAINID_4 --chain-id=$CHAINID_4


echo "Adding genesis accounts..."
echo $VAL_MNEMONIC_1 | $BINARY keys add val1 --home $CHAIN_DIR/$CHAINID_1 --recover --keyring-backend=test
echo $VAL_MNEMONIC_2 | $BINARY keys add val2 --home $CHAIN_DIR/$CHAINID_2 --recover --keyring-backend=test
echo $VAL_MNEMONIC_3 | $BINARY keys add val3 --home $CHAIN_DIR/$CHAINID_3 --recover --keyring-backend=test
echo $VAL_MNEMONIC_4 | $BINARY keys add val4 --home $CHAIN_DIR/$CHAINID_4 --recover --keyring-backend=test


echo $WALLET_MNEMONIC_1 | $BINARY keys add wallet1 --home $CHAIN_DIR/$CHAINID_1 --recover --keyring-backend=test
echo $WALLET_MNEMONIC_2 | $BINARY keys add wallet2 --home $CHAIN_DIR/$CHAINID_1 --recover --keyring-backend=test
echo $WALLET_MNEMONIC_3 | $BINARY keys add wallet1 --home $CHAIN_DIR/$CHAINID_2 --recover --keyring-backend=test
echo $WALLET_MNEMONIC_4 | $BINARY keys add wallet2 --home $CHAIN_DIR/$CHAINID_2 --recover --keyring-backend=test
echo $WALLET_MNEMONIC_5 | $BINARY keys add wallet1 --home $CHAIN_DIR/$CHAINID_3 --recover --keyring-backend=test
echo $WALLET_MNEMONIC_6 | $BINARY keys add wallet2 --home $CHAIN_DIR/$CHAINID_3 --recover --keyring-backend=test
echo $WALLET_MNEMONIC_7 | $BINARY keys add wallet1 --home $CHAIN_DIR/$CHAINID_4 --recover --keyring-backend=test
echo $WALLET_MNEMONIC_8 | $BINARY keys add wallet2 --home $CHAIN_DIR/$CHAINID_4 --recover --keyring-backend=test


echo $RLY_MNEMONIC_1 | $BINARY keys add rly_chain1 --home $CHAIN_DIR/$CHAINID_1 --recover --keyring-backend=test 
echo $RLY_MNEMONIC_2 | $BINARY keys add rly_chain2 --home $CHAIN_DIR/$CHAINID_2 --recover --keyring-backend=test 
echo $RLY_MNEMONIC_3 | $BINARY keys add rly_chain3 --home $CHAIN_DIR/$CHAINID_3 --recover --keyring-backend=test 
echo $RLY_MNEMONIC_4 | $BINARY keys add rly_chain4 --home $CHAIN_DIR/$CHAINID_4 --recover --keyring-backend=test 

$BINARY genesis add-genesis-account $($BINARY --home $CHAIN_DIR/$CHAINID_1 keys show val1 --keyring-backend test -a) 100000000000stake  --home $CHAIN_DIR/$CHAINID_1
$BINARY genesis add-genesis-account $($BINARY --home $CHAIN_DIR/$CHAINID_2 keys show val2 --keyring-backend test -a) 100000000000stake  --home $CHAIN_DIR/$CHAINID_2
$BINARY genesis add-genesis-account $($BINARY --home $CHAIN_DIR/$CHAINID_3 keys show val3 --keyring-backend test -a) 100000000000stake  --home $CHAIN_DIR/$CHAINID_3
$BINARY genesis add-genesis-account $($BINARY --home $CHAIN_DIR/$CHAINID_4 keys show val4 --keyring-backend test -a) 100000000000stake  --home $CHAIN_DIR/$CHAINID_4

$BINARY genesis add-genesis-account $($BINARY --home $CHAIN_DIR/$CHAINID_1 keys show wallet1 --keyring-backend test -a) 100000000000stake  --home $CHAIN_DIR/$CHAINID_1
$BINARY genesis add-genesis-account $($BINARY --home $CHAIN_DIR/$CHAINID_1 keys show wallet2 --keyring-backend test -a) 100000000000stake  --home $CHAIN_DIR/$CHAINID_1

$BINARY genesis add-genesis-account $($BINARY --home $CHAIN_DIR/$CHAINID_2 keys show wallet1 --keyring-backend test -a) 100000000000stake  --home $CHAIN_DIR/$CHAINID_2
$BINARY genesis add-genesis-account $($BINARY --home $CHAIN_DIR/$CHAINID_2 keys show wallet2 --keyring-backend test -a) 100000000000stake  --home $CHAIN_DIR/$CHAINID_2

$BINARY genesis add-genesis-account $($BINARY --home $CHAIN_DIR/$CHAINID_3 keys show wallet1 --keyring-backend test -a) 100000000000stake  --home $CHAIN_DIR/$CHAINID_3
$BINARY genesis add-genesis-account $($BINARY --home $CHAIN_DIR/$CHAINID_3 keys show wallet2 --keyring-backend test -a) 100000000000stake  --home $CHAIN_DIR/$CHAINID_3

$BINARY genesis add-genesis-account $($BINARY --home $CHAIN_DIR/$CHAINID_4 keys show wallet1 --keyring-backend test -a) 100000000000stake  --home $CHAIN_DIR/$CHAINID_4
$BINARY genesis add-genesis-account $($BINARY --home $CHAIN_DIR/$CHAINID_4 keys show wallet2 --keyring-backend test -a) 100000000000stake  --home $CHAIN_DIR/$CHAINID_4

$BINARY genesis add-genesis-account $($BINARY --home $CHAIN_DIR/$CHAINID_1 keys show rly_chain1 --keyring-backend test -a) 100000000000stake  --home $CHAIN_DIR/$CHAINID_1
$BINARY genesis add-genesis-account $($BINARY --home $CHAIN_DIR/$CHAINID_2 keys show rly_chain2 --keyring-backend test -a) 100000000000stake  --home $CHAIN_DIR/$CHAINID_2
$BINARY genesis add-genesis-account $($BINARY --home $CHAIN_DIR/$CHAINID_3 keys show rly_chain3 --keyring-backend test -a) 100000000000stake  --home $CHAIN_DIR/$CHAINID_3
$BINARY genesis add-genesis-account $($BINARY --home $CHAIN_DIR/$CHAINID_4 keys show rly_chain4 --keyring-backend test -a) 100000000000stake  --home $CHAIN_DIR/$CHAINID_4

echo "Creating and collecting gentx..."
$BINARY genesis gentx val1 10000000000stake --home $CHAIN_DIR/$CHAINID_1 --chain-id $CHAINID_1 --keyring-backend test
$BINARY genesis gentx val2 10000000000stake --home $CHAIN_DIR/$CHAINID_2 --chain-id $CHAINID_2 --keyring-backend test
$BINARY genesis gentx val3 10000000000stake --home $CHAIN_DIR/$CHAINID_3 --chain-id $CHAINID_3 --keyring-backend test
$BINARY genesis gentx val4 10000000000stake --home $CHAIN_DIR/$CHAINID_4 --chain-id $CHAINID_4 --keyring-backend test

$BINARY genesis collect-gentxs --home $CHAIN_DIR/$CHAINID_1
$BINARY genesis collect-gentxs --home $CHAIN_DIR/$CHAINID_2
$BINARY genesis collect-gentxs --home $CHAIN_DIR/$CHAINID_3
$BINARY genesis collect-gentxs --home $CHAIN_DIR/$CHAINID_4

echo "Changing defaults and ports in app.toml and config.toml files..."
sed -i -e 's#"tcp://0.0.0.0:26656"#"tcp://0.0.0.0:'"$P2PPORT_1"'"#g' $CHAIN_DIR/$CHAINID_1/config/config.toml
sed -i -e 's#"tcp://127.0.0.1:26657"#"tcp://0.0.0.0:'"$RPCPORT_1"'"#g' $CHAIN_DIR/$CHAINID_1/config/config.toml
sed -i -e 's/timeout_commit = "5s"/timeout_commit = "1s"/g' $CHAIN_DIR/$CHAINID_1/config/config.toml
sed -i -e 's/timeout_propose = "3s"/timeout_propose = "1s"/g' $CHAIN_DIR/$CHAINID_1/config/config.toml
sed -i -e 's#"tcp://0.0.0.0:1317"#"tcp://0.0.0.0:'"$RESTPORT_1"'"#g' $CHAIN_DIR/$CHAINID_1/config/app.toml
sed -i -e 's#":8080"#":'"$ROSETTA_1"'"#g' $CHAIN_DIR/$CHAINID_1/config/app.toml

sed -i -e 's#"tcp://0.0.0.0:26656"#"tcp://0.0.0.0:'"$P2PPORT_2"'"#g' $CHAIN_DIR/$CHAINID_2/config/config.toml
sed -i -e 's#"tcp://127.0.0.1:26657"#"tcp://0.0.0.0:'"$RPCPORT_2"'"#g' $CHAIN_DIR/$CHAINID_2/config/config.toml
sed -i -e 's/timeout_commit = "5s"/timeout_commit = "1s"/g' $CHAIN_DIR/$CHAINID_2/config/config.toml
sed -i -e 's/timeout_propose = "3s"/timeout_propose = "1s"/g' $CHAIN_DIR/$CHAINID_2/config/config.toml
sed -i -e 's#"tcp://0.0.0.0:1317"#"tcp://0.0.0.0:'"$RESTPORT_2"'"#g' $CHAIN_DIR/$CHAINID_2/config/app.toml
sed -i -e 's#":8080"#":'"$ROSETTA_2"'"#g' $CHAIN_DIR/$CHAINID_2/config/app.toml

sed -i -e 's#"tcp://0.0.0.0:26656"#"tcp://0.0.0.0:'"$P2PPORT_3"'"#g' $CHAIN_DIR/$CHAINID_3/config/config.toml
sed -i -e 's#"tcp://127.0.0.1:26657"#"tcp://0.0.0.0:'"$RPCPORT_3"'"#g' $CHAIN_DIR/$CHAINID_3/config/config.toml
sed -i -e 's/timeout_commit = "5s"/timeout_commit = "1s"/g' $CHAIN_DIR/$CHAINID_3/config/config.toml
sed -i -e 's/timeout_propose = "3s"/timeout_propose = "1s"/g' $CHAIN_DIR/$CHAINID_3/config/config.toml
sed -i -e 's#"tcp://0.0.0.0:1317"#"tcp://0.0.0.0:'"$RESTPORT_3"'"#g' $CHAIN_DIR/$CHAINID_3/config/app.toml
sed -i -e 's#":8080"#":'"$ROSETTA_3"'"#g' $CHAIN_DIR/$CHAINID_3/config/app.toml

sed -i -e 's#"tcp://0.0.0.0:26656"#"tcp://0.0.0.0:'"$P2PPORT_4"'"#g' $CHAIN_DIR/$CHAINID_4/config/config.toml
sed -i -e 's#"tcp://127.0.0.1:26657"#"tcp://0.0.0.0:'"$RPCPORT_4"'"#g' $CHAIN_DIR/$CHAINID_4/config/config.toml
sed -i -e 's/timeout_commit = "5s"/timeout_commit = "1s"/g' $CHAIN_DIR/$CHAINID_4/config/config.toml
sed -i -e 's/timeout_propose = "3s"/timeout_propose = "1s"/g' $CHAIN_DIR/$CHAINID_4/config/config.toml
sed -i -e 's#"tcp://0.0.0.0:1317"#"tcp://0.0.0.0:'"$RESTPORT_4"'"#g' $CHAIN_DIR/$CHAINID_4/config/app.toml
sed -i -e 's#":8080"#":'"$ROSETTA_4"'"#g' $CHAIN_DIR/$CHAINID_4/config/app.toml

