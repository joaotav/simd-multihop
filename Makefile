#!/usr/bin/make -f

multihop-testnet: 
	./init_chains.sh
	./add_hermes_keys.sh
	./start_chains.sh
	./create_connections.sh


init: kill-chains
	./init_chains.sh
	
	
start: 
	@echo "Starting simd test network with 4 chains (chain1, chain2, chain3, chain4)"
	./start_chains.sh


kill-chains:
	@echo "Stopping chains and removing previous data..."
	-@rm -rf ./simd_data 2>/dev/null
	-@killall simd 2>/dev/null


hermes-keys:
	@echo "Adding keys to Hermes relayer..."
	./add_hermes_keys.sh


connect-chains:
	@echo "Establishing IBC connections between chains..."
	@echo "Check create_connections.sh for info on client and connection IDs"
	./create_connections.sh

