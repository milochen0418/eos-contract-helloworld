#!/bin/bash
CONTRACT_NAME=hello

#eosio-cpp -o hello.wasm hello.cpp --abigen
eosio-cpp -o $CONTRACT_NAME.wasm hello.cpp --abigen
rm -rf  ./$CONTRACT_NAME
mkdir -p ./$CONTRACT_NAME
mv $CONTRACT_NAME.wasm ./$CONTRACT_NAME/
mv $CONTRACT_NAME.abi ./$CONTRACT_NAME/
