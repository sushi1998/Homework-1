pragma solidity ^0.4.16;


contract Fibonacci {
	function calculate(uint position) returns (uint result) {
		/* Add one variable to hold our greeting */
		greeter greeting;
		uint result = 0;
		if (position == 0) {
		result = 0;
		}
		else if (position == 1) {
		return 1;
		}
		else {
			uint a = 0;
			uint b = 1;
			uint temp = 0;
			for (uint i = 1; i < position; i++) {
				temp = b;
				b = b + a;
				a = temp;
			}
		result = b;
		}
		return result;
	}
	}

	/* Add a fallback function to prevent contract payability and non-existent function calls */
	function() {
	throw;
	}
}
