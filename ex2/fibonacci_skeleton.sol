pragma solidity ^0.4.16;


contract Fibonacci {
	function calculate(uint position) returns (uint result) {
		/* Add one variable to hold our greeting */
		greeter greeting;
		uint res = 0;
		if (position == 0) {
		res = 0;
		}
		else if (position == 1) {
		return 1;
		}
		else {
			uint k1 = 0;
			uint k2 = 1;
			uint temp = 0;
			for (uint i = 1; i < position; i++) {
				temp = k2;
				k2 = k2 + k1;
				k1 = temp;
			}
		res = k2;
		}
		return res;
	}
	}

	/* Add a fallback function to prevent contract payability and non-existent function calls */
	function() {
	throw;
	}
}
