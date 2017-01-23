#!/bin/bash
export NETWORK_DIR=`dirname $0`

../geth/go-ethereum/build/bin/geth --datadir=$NETWORK_DIR/node2 --port=10010 --rpc --rpcapi="admin,eth,miner,eth,web3,personal,txpool" --rpcaddr="127.0.0.1" --rpcport=8545 --ipcdisable --networkid=2016020799 --identity=devnode2 --genesis=$NETWORK_DIR/genesis_block.json --mine --minerthreads=2 --etherbase "0" console


