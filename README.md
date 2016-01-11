## Description
--------------
* Example of using Haskell for developing distributed appliations. Cloud Haskell is a set of libraries that bring Erlang-style concurrency and distribution to Haskell programs. This project is an implementation of that distributed computing interface, where processes communicate with one another through explicit message passing rather than shared memory.

## Setup
--------
#### Prerequisites
* Working Haskell environment (https://www.haskell.org/downloads)
* Due to the fact that this project contains already built libraries for distributed-process and network-transport-tcp there is no need for extra software. If the user wishes to separetly build these libraries stack and cabal will need to be provided.

#### Runing the code
* Load the \CloudHaskell\FirstEx\app\Main.hs file into ghci and type main
* Load the \CloudHaskell\PingPong\pingpong.hs file into ghci and type main
