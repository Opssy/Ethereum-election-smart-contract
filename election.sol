pragma solidity ^0.4.0;

contract Election {

	struct candidates {
		string names;
		uint voteCounts;
		
	}
	struct voters {
		bool voted;
		uint voteIndex;
		
	}
	
	address public owner;
	mapping (address => voters) public voters;

	candidates[] public candidates;
	unint public auctioneEnd;

	function Election( string name, uint durationMinutes, string candidate1, string candidate2 ){
		owner = msg.sender;
		name = _name;
		auctioneEnd = now + (durationMinutes*1 minutes);


		candidates.push(candidates(candidate1, 0));
		candidates.push(candidates(candidate2, 0));
	} 
	function authorize(address voter){
		require()
	}
}
