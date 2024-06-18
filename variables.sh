#!/bin/bash

BINARY=$HOME/polymer-multihop/build/simd

# Directory in which to store the data for chains and nodes
CHAIN_DIR=./simd_data

CHAINID_1=chain1
CHAINID_2=chain2
CHAINID_3=chain3
CHAINID_4=chain4
CHAINID_5=chain5

HERMES_BINARY=/opt/hermes/target/release/hermes
HERMES_CONFIG_DIR=$HOME/.hermes/config.toml  

VAL_MNEMONIC_1="clock post desk civil pottery foster expand merit dash seminar song memory figure uniform spice circle try happy obvious trash crime hybrid hood cushion"
VAL_MNEMONIC_2="angry twist harsh drastic left brass behave host shove marriage fall update business leg direct reward object ugly security warm tuna model broccoli choice"
VAL_MNEMONIC_3="crawl off pony bamboo truck title lock brick toss enforce suit elephant save few wonder vacant walk tennis warrior sound harbor renew width stool"
VAL_MNEMONIC_4="sea title fancy wolf soul inject venture electric crop ready frog cactus harsh ghost liar company vote summer rotate mule three jaguar anger annual"
VAL_MNEMONIC_5="pistol burst bacon duty logic vast taxi junk custom surprise recall right jeans child song chef soda answer tip wreck drink throw gauge sail"

WALLET_MNEMONIC_1="banner spread envelope side kite person disagree path silver will brother under couch edit food venture squirrel civil budget number acquire point work mass"
WALLET_MNEMONIC_2="veteran try aware erosion drink dance decade comic dawn museum release episode original list ability owner size tuition surface ceiling depth seminar capable only"
WALLET_MNEMONIC_3="vacuum burst ordinary enact leaf rabbit gather lend left chase park action dish danger green jeans lucky dish mesh language collect acquire waste load"
WALLET_MNEMONIC_4="open attitude harsh casino rent attitude midnight debris describe spare cancel crisp olive ride elite gallery leaf buffalo sheriff filter rotate path begin soldier"
WALLET_MNEMONIC_5="ketchup humble street place desk wheat proud illness check pitch april kiwi labor gas use course coach journey pistol carpet rubber crystal merry dry"
WALLET_MNEMONIC_6="weekend mutual state wonder jump web mechanic basket roast oak grab laundry harvest evidence opinion level book tape cotton original year room number civil"
WALLET_MNEMONIC_7="cram speed slight enlist episode galaxy canoe method oval ghost sure six riot material solar pride cushion asset fluid december hurry floor dutch head"
WALLET_MNEMONIC_8="danger salute expand into meat image private tornado since dog empower wall shoe mercy frequent endorse practice loud sentence nominee present bar garbage wise"
WALLET_MNEMONIC_9="admit pulp model ship liquid tooth size begin owner act zone juice engage merit direct sudden fashion fiscal letter story letter pony dutch stairs"
WALLET_MNEMONIC_10="hold sort volcano winter scale segment snake yard gaze behave combine spatial list tuna work clown canal struggle museum curve salon baby original strategy"

RLY_MNEMONIC_1="alley afraid soup fall idea toss can goose become valve initial strong forward bright dish figure check leopard decide warfare hub unusual join cart"
RLY_MNEMONIC_2="record gift you once hip style during joke field prize dust unique length more pencil transfer quit train device arrive energy sort steak upset"
RLY_MNEMONIC_3="street shrug return host gadget risk shadow mansion upset fish sure foster talk stable swim typical fish degree fall winner slam page raise own"
RLY_MNEMONIC_4="head shy output silver fossil enhance spin gospel blue dress stay zone armed van milk video light dove truck reason viable concert access mansion"
RLY_MNEMONIC_5="box sorry hen worth lion great people index industry donkey source foam grab brick file neck market avoid train fee buffalo today believe wait"

P2PPORT_1=16656
P2PPORT_2=26656
P2PPORT_3=36656
P2PPORT_4=46656
P2PPORT_5=56656

RPCPORT_1=16657
RPCPORT_2=26657
RPCPORT_3=36657
RPCPORT_4=46657
RPCPORT_5=56657

GRPCPORT_1=8090
GRPCPORT_2=8091
GRPCPORT_3=8092
GRPCPORT_4=8093
GRPCPORT_5=8094

RESTPORT_1=1316
RESTPORT_2=1317
RESTPORT_3=1318
RESTPORT_4=1319
RESTPORT_5=1320

ROSETTA_1=8080
ROSETTA_2=8081
ROSETTA_3=8082
ROSETTA_4=8083
ROSETTA_5=8084
