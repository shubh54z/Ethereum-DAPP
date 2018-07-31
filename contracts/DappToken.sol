// using erc20 standard to govern behavior of currency

// need a constructor to run when contract is deploy
// set token amount
// set way to read total number of tokens

pragma solidity ^0.4.2; //declare version of solidity

contract DappToken {
    //name
    string public name = "DApp Token";
    //symbol
    string public symbol = "DAPP";
    //standard
    string public standard = "DApp Token v1.0";

    uint256 public totalSupply;

    event Transfer(
        address indexed _from,
        address indexed _to,
        uint256 _value
    );

    //Approve 
    event Approval(
        address indexed _owner,
        address indexed _spender,
        uint256 _value
    );
    
    mapping(address => uint256) public balanceOf;

    function DappToken (uint256 _initialSupply) public {
        balanceOf[msg.sender] = _initialSupply;
        totalSupply = _initialSupply;
        // allocate inital supply
    }

    // transfer of coins
    function transfer(address _to, uint256 _value) public returns (bool success) {
        require(balanceOf[msg.sender] >= _value);
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
        Transfer(msg.sender, _to, _value);
        return true;
    }
//approve function
    function approve(address _spender, uint256 _value) public returns (bool success) {
        //allowance
//approval event
        Approval(msg.sender, _spender, _value);
        return true;
    }


} 
