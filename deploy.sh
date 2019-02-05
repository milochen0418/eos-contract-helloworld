#!/bin/bash
CONTRACT_NAME=hello
ACCOUNT_NAME=hello
if [ $# -eq 2 ]; then
	CONTRACT_NAME=$1
	ACCOUNT_NAME=$2
fi 

#cleos set contract hello ~/test/eos-contract-helloworld/hello -p hello@active
cleos set contract $CONTRACT_NAME $(dirname $0)/$CONTRACT_NAME -p $ACCOUNT_NAME@active
