pragma solidity >=0.4.21 <0.7.0;

//https://www.stat.berkeley.edu/~stark/Java/Html/sha256Rand.htm
//https://people.csail.mit.edu/rivest/sampler.py

contract PRNGKECCAK256 {

    uint seed;
    uint currentSampleNumber = 1; 
    
    event PRNEvent(bytes32 h, uint n);
    
    constructor (uint _seed) public {
        seed = _seed;
    }
    
    function getPRN(uint _maxValue) public returns(uint) {
        bytes32 h = keccak256(abi.encodePacked(seed, currentSampleNumber));
        currentSampleNumber += 1;
        uint n = uint(h) % _maxValue + 1;
        emit PRNEvent(h, n);
        return n;
    }
}
