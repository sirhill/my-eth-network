#!/bin/bash
export NETWORK_DIR=`dirname $0`
export NODE_NAME=main_node
export NODE_PORT=10000
export NODE_IP="195.154.221.20"
export NODE_PORT_RPC=10001

geth --datadir=$NETWORK_DIR/$NODE_NAME --port=$NODE_PORT --rpc --rpcapi="admin,eth,miner,eth,web3,personal,txpool" --rpcaddr=$NODE_IP --rpcport=$NODE_PORT_RPC --ipcdisable --networkid=2016020799 --identity=$NODE_NAME --genesis=$NETWORK_DIR/genesis_block.json --nodiscover --mine --minerthreads=2 console

