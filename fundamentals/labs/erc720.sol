// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// ERC-20 Token Smart Contract
contract MyToken {
    // Token name
    string private _name;
    // Token symbol
    string private _symbol;
    // Token decimals
    uint8 private _decimals;
    // Token total supply
    uint256 private _totalSupply;
    // Token balance of each account
    mapping(address => uint256) private _balances;
    // Token allowance for each account to spend on behalf of another account
    mapping(address => mapping(address => uint256)) private _allowances;

    // Event for Transfer to be sent to the front end
    event Transfer(address sender, address recipient, uint amount);
    // Event for Approval to be send to the front end
    event Approval(address owner, address spender, uint amount);

    // Token constructor
    constructor(string memory name_, string memory symbol_, uint8 decimals_, uint256 totalSupply_) {
        _name = name_;
        _symbol = symbol_;
        _decimals = decimals_;
        _totalSupply = totalSupply_ * (10 ** decimals_);
        _balances[msg.sender] = _totalSupply;
        emit Transfer(address(0), msg.sender, _totalSupply);
    }

    // Token name
    function name() public view returns (string memory) {
        return _name;
    }

    // Token symbol
    function symbol() public view returns (string memory) {
        return _symbol;
    }

    // Token decimals
    function decimals() public view returns (uint8) {
        return _decimals;
    }

    // Token total supply
    function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }

    // Token balance of an account
    function balanceOf(address account) public view returns (uint256) {
        return _balances[account];
    }

    // Token allowance for an account to spend on behalf of another account
    function allowance(address owner, address spender) public view returns (uint256) {
        return _allowances[owner][spender];
    }

    // Token transfer from sender to receiver
    function transfer(address recipient, uint256 amount) public returns (bool) {
        _transfer(msg.sender, recipient, amount);
        return true;
    }

    // Token approve for an account to spend on behalf of another account
    function approve(address spender, uint256 amount) public returns (bool) {
        _approve(msg.sender, spender, amount);
        return true;
    }

    // Token transfer from one account to another account on behalf of another account
    function transferFrom(address sender, address recipient, uint256 amount) public returns (bool) {
        _transfer(sender, recipient, amount);
        _approve(sender, msg.sender, _allowances[sender][msg.sender] - amount);
        return true;
    }

    // Token internal transfer function
    function _transfer(address sender, address recipient, uint256 amount) internal {
        require(sender != address(0), "ERC20: transfer from the zero address");
        require(recipient != address(0), "ERC20: transfer to the zero address");
        require(_balances[sender] >= amount, "ERC20: transfer amount exceeds balance");
        _balances[sender] -= amount;
        _balances[recipient] += amount;
        emit Transfer(sender, recipient, amount);
    }

    // Token internal approve function
    function _approve(address owner, address spender, uint256 amount) internal {
        require(owner != address(0), "ERC20: approve from the zero address");
        require(spender != address(0), "ERC20: approve to the zero address");
        _allowances[owner][spender] = amount;
        emit Approval(owner, spender, amount);
    }
}
