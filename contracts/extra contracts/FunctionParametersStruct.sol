// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    // Define a struct to represent candidate details
    struct Candidate {
        uint256 id;
        string name;
        uint256 voteCount;
    }

    // Array to store the list of candidates
    Candidate[] public candidates;

    // Function to add a new candidate to the list
    function addCandidate(uint256 candidateId, string memory name) public {
        // Create a new Candidate struct with the provided details
        Candidate memory newCandidate = Candidate(candidateId, name, 0);

        // Add the new candidate to the candidates array
        candidates.push(newCandidate);
    }

    // Function to get the total number of candidates
    function getTotalCandidates() public view returns (uint256) {
        return candidates.length;
    }

    // Function to vote for a candidate
    function vote(uint256 candidateId) public {
        // Ensure the candidate ID is within valid range
        require(candidateId < candidates.length, "Invalid candidate ID");

        // Increment the vote count for the chosen candidate
        candidates[candidateId].voteCount++;
    }

    // Function to get the details of a specific candidate by their index
    function getCandidateDetails(
        uint256 index
    )
        public
        view
        returns (uint256 candidateId, string memory name, uint256 voteCount)
    {
        require(index < candidates.length, "Invalid candidate index");

        // Access the candidate details from the candidates array
        Candidate memory candidate = candidates[index];
        return (candidate.id, candidate.name, candidate.voteCount);
    }
}
