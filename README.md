# `simd` Multihop
Scripts to configure, launch and connect multiple ibc-go `simd` chains via IBC using the Hermes Relayer.

## Prerequisites
 Install and build Polymer's fork of ibc-go with support for multi-hop channels:
```
git clone https://github.com/polymerdao/ibc-go.git polymer-multihop && cd polymer-multihop
make build
```
The binary for `simd` will be located in `polymer-multihop/build/simd`.

## Configuration

Clone the repository:

```
cd $HOME
git clone https://github.com/joaotav/simd-multihop.git && cd simd-multihop
```

Set the multihop `simd` path in `variables.sh`, e.g:

```
BINARY = $HOME/polymer-multihop/build/simd
...
```

Set the path to your `hermes` binary and configuration file in `variables.sh`:
```
HERMES_BINARY=/opt/hermes/target/release/hermes
HERMES_CONFIG_DIR=$HOME/.hermes/config.toml 
```

Replace the contents of the `config.toml` file in `HERMES_CONFIG_DIR` with the contents of the `config.toml` file in this repository.

## Launching the testnet

> [!NOTE]  
> During testnet initialization, the scripts create additional connections involving a dummy chain, `chain5`, in order to increase connection identifiers and achieve uniquely
identified connections between chains 1, 2, 3 and 4. This facilitates the testing and debugging of multihop channel operations.

#### To configure and launch a testnet with 4 connected chains `chain1 <--> chain2 <--> chain3 <--> chain4` with a single command:

```
make multihop-testnet
```
The resulting chain topology is the following:

![image](https://github.com/joaotav/simd-multihop/assets/22059902/64037fe4-fda3-4ec6-8073-ed41ae3eeb5b)

## To execute each step individually:

#### To initialize the configuration and wallets for the `simd` chains:

```
make init
```

#### To add wallet keys to `hermes`:
```
make hermes-keys
```

#### To start the `simd` chains:

```
make start
```

#### To create the clients between the chains (see `create_clients.sh` for detailed info on ClientIds):

```
make clients
```

#### To establish the connections between the chains (see `create_connections.sh` for detailed info on ClientIds and ConnectionIds):

```
make connections
```







