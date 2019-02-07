# eos-contract-helloworld
EOS Smart Contract HelloWorld

# Use eos-script
## If you have no eos-script environemnet , you can use the following way
$ cd ~/  
$ git clone https://github.com/milochen0418/eos-script  
## go to the project folder and call use-eos-script.sh
$ cd YOUR_EOS_CONTRACT_HELLOWORLD_DIR
$ source ~/eos-script/nodeos/use-eos-script.sh
Right now, you can use scripts in the eos-script project when you develope project 

## Step by Step
Assume you have ~/eos-script 
$ source ~/eos-script/nodeos/use-eos-script.sh
$ createAccount.sh alice
$ createAccount.sh bob
$ ./build.sh
$ ./deploy.sh alice
$ cleos push action alice hi '["user"]' -p bob@active
$ cleos push action alice hiauth '["alice"]' -p bob@active
$ cleos push action alice hiauth '["bob"]' -p bob@active
