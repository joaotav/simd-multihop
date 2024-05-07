#!/bin/bash

BINARY=simd

# Directory in which to store the data for chains and nodes
CHAIN_DIR=./simd_data

CHAINID_1=chain1
CHAINID_2=chain2
CHAINID_3=chain3
CHAINID_4=chain4

HERMES_BINARY=/opt/hermes/target/release/hermes
HERMES_CONFIG_DIR=$HOME/.hermes/config.toml  


VAL_MNEMONIC_1="clock post desk civil pottery foster expand merit dash seminar song memory figure uniform spice circle try happy obvious trash crime hybrid hood cushion"
VAL_MNEMONIC_2="angry twist harsh drastic left brass behave host shove marriage fall update business leg direct reward object ugly security warm tuna model broccoli choice"
VAL_MNEMONIC_3="crawl off pony bamboo truck title lock brick toss enforce suit elephant save few wonder vacant walk tennis warrior sound harbor renew width stool"
VAL_MNEMONIC_4="sea title fancy wolf soul inject venture electric crop ready frog cactus harsh ghost liar company vote summer rotate mule three jaguar anger annual"

WALLET_MNEMONIC_1="banner spread envelope side kite person disagree path silver will brother under couch edit food venture squirrel civil budget number acquire point work mass"
WALLET_MNEMONIC_2="veteran try aware erosion drink dance decade comic dawn museum release episode original list ability owner size tuition surface ceiling depth seminar capable only"
WALLET_MNEMONIC_3="vacuum burst ordinary enact leaf rabbit gather lend left chase park action dish danger green jeans lucky dish mesh language collect acquire waste load"
WALLET_MNEMONIC_4="open attitude harsh casino rent attitude midnight debris describe spare cancel crisp olive ride elite gallery leaf buffalo sheriff filter rotate path begin soldier"
WALLET_MNEMONIC_5="ketchup humble street place desk wheat proud illness check pitch april kiwi labor gas use course coach journey pistol carpet rubber crystal merry dry"
WALLET_MNEMONIC_6="weekend mutual state wonder jump web mechanic basket roast oak grab laundry harvest evidence opinion level book tape cotton original year room number civil"
WALLET_MNEMONIC_7="cram speed slight enlist episode galaxy canoe method oval ghost sure six riot material solar pride cushion asset fluid december hurry floor dutch head"
WALLET_MNEMONIC_8="danger salute expand into meat image private tornado since dog empower wall shoe mercy frequent endorse practice loud sentence nominee present bar garbage wise"

RLY_MNEMONIC_1="alley afraid soup fall idea toss can goose become valve initial strong forward bright dish figure check leopard decide warfare hub unusual join cart"
RLY_MNEMONIC_2="record gift you once hip style during joke field prize dust unique length more pencil transfer quit train device arrive energy sort steak upset"
RLY_MNEMONIC_3="street shrug return host gadget risk shadow mansion upset fish sure foster talk stable swim typical fish degree fall winner slam page raise own"
RLY_MNEMONIC_4="head shy output silver fossil enhance spin gospel blue dress stay zone armed van milk video light dove truck reason viable concert access mansion"

P2PPORT_1=16656
P2PPORT_2=26656
P2PPORT_3=36656
P2PPORT_4=46656

RPCPORT_1=16657
RPCPORT_2=26657
RPCPORT_3=36657
RPCPORT_4=46657

GRPCPORT_1=8090
GRPCPORT_2=8091
GRPCPORT_3=8092
GRPCPORT_4=8093

RESTPORT_1=1316
RESTPORT_2=1317
RESTPORT_3=1318
RESTPORT_4=1319

ROSETTA_1=8080
ROSETTA_2=8081
ROSETTA_3=8082
ROSETTA_4=8083
