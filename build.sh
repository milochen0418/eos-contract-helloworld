#!/bin/bash
CONTRACT_NAME=hello

#eosio-cpp -o hello.wasm hello.cpp --abigen
eosio-cpp -o $CONTRACT_NAME.wasm hello.cpp --abigen
mkdir -p $CONTRACT_NAME
cp $CONTRACT_NAME.wasm ./$CONTRACT_NAME/
cp $CONTRACT_NAME.abi ./$CONTRACT_NAME/
