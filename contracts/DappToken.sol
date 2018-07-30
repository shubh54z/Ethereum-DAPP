// using erc20 standard to govern behavior of currency

// need a constructor to run when contract is deploy
// set token amount
// set way to read total number of tokens

pragma solidity ^0.4.2; //declares version of solidity

contract DappToken {
    uint256 public totalSupply;  

    function DappToken () public {
        totalSupply = 1000000;
    }
}
