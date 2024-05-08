#!/usr/bin/make -f

start: 
	@echo "Starting simd test network with 4 chains (chain1, chain2, chain3, chain4)"
	./start_chains.sh


kill-chains:
	@echo "Stopping chains and removing previous data..."
	-@rm -rf ./simd_data 2>/dev/null || true
	-@killall simd 2>/dev/null || true


hermes-keys:
	@echo "Adding keys to Hermes relayer..."
	./add_hermes_keys.sh


clients:
	@echo "Creating clients..."
	@echo "Check create_clients.sh for info on client IDs"
	./create_clients.sh
	
	
connections:
	@echo "Creating clients..."
	@echo "Check create_connections.sh for info on connection IDs"
	./create_connections.sh


init: kill-chains
	./init_chains.sh
	
	
multihop-testnet: kill-chains \
		  init \
	          hermes-keys \
	          start \
		  clients \
	    	  connections \
	
