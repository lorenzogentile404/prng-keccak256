# Solidiy Pseudo-Random Number Generator based on KECCAK-256 

This repository contains a Solidity implementation of a Pseudo-Random Number Generator using KECCAK-256. An analogous approach based on SHA-256 is available [here](https://www.stat.berkeley.edu/~stark/Java/Html/sha256Rand.htm) and [here](https://people.csail.mit.edu/rivest/sampler.py).
The algorithm assumes that a random seed is provided. In the context of Ethereum this random seed can be computed by running a coin tossing protocol in the caller contract. For comparison, also a Python implemetation using SHA-256 is available in the repository.
