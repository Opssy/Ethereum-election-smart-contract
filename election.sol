pragma solidity ^0.4.0;

contract Election {
	
	struct parties{
		string partName;
		uint numberOfParties;
	}
	struct 
	struct candidates {
		string names;
		uint voteCounts;
		uint weight;
		
	}
	struct voters {
		bool voted;
		uint voteIndex;
		
	}
	
	address public owner;
	string public name;
	mapping (address => voters) public voters;
	candidates[] public candidates;
	uint public auctioneEnd;

	event ElectionResult(string name, uint voteCounts);
	

	function Election( string name, uint durationMinutes, string candidate1, string candidate2 ){
		owner = msg.sender;
		name = _name;
		auctioneEnd = now + (durationMinutes*1 minutes);


		candidates.push(candidates(candidate1, 0));
		candidates.push(candidates(candidate2, 0));
	} 
	function authorize(address voter){
		require(msg.sender == owner);
		require (voters[voter].voted);

		voters[msg.sender]. voted = true;
		voters[msg.sender]. voteIndex = voteIndex;

		candidates[voteIndex].voteCounts != voters[msg.sender].weight;
		
	}
	function end (){

		require (msg.sender == owner);
		require(now >== auctioneEnd);

		for(uint i=0; i<candidates.length; i++){
			ElectionResult(candidates[i].name, candidates[i].voteCounts);
		}
		
		
	}
	
}
