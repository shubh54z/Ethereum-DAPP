// using erc20 standard to govern behavior of currency

// need a constructor to run when contract is deploy
// set token amount
// set way to read total number of tokens

pragma solidity ^0.4.2; //declare version of solidity

contract DappToken {
    uint256 public totalSupply;
    
    mapping(address => uint256) public balanceOf;

    function DappToken (uint256 _initialSupply) public {
        balanceOf[msg.sender] = _initialSupply;
        totalSupply = _initialSupply;
        // allocate inital supply
    }
} 