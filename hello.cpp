#include <eosiolib/eosio.hpp>
#include <eosiolib/print.hpp>

using namespace eosio;

class hello : public contract {
	public:
		using contract::contract;
		
		[[eosio::action]]
		void hi( name user ) {
			print("Hi, ", user);
		}

		[[eosio::action]]
		void hiauth( name user ) {
			require_auth( user );
			print("HiAuth, ", user);
		}
};

//EOSIO_DISPATCH( hello, (hi));
EOSIO_DISPATCH( hello, (hiauth));


