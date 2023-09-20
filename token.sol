// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Tokening {

    string public tokenName="bitcoin";
    string public tokenSymbol="BTC";
    uint256 public totalSupply=0;

    mapping(address => uint256) public balances;

    function mint(address _to, uint256 _value) public {
        totalSupply += _value;
        balances[_to] += _value;
    }

    function burn(uint256 _value) public {
        require(balances[msg.sender] >= _value, "Sorry! You Don't Have Enough Money");
        totalSupply -= _value;
        balances[msg.sender] -= _value;
    }

}
