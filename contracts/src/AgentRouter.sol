// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract AgentRouter {
    event IntentRegistered(address indexed user, bytes32 indexed intentId, uint256 usdcBudget, string action);
    event IntentSettled(bytes32 indexed intentId, bool approved, string reason);

    address public owner;
    mapping(bytes32 => uint256) public budgets;

    constructor() { owner = msg.sender; }

    function registerIntent(bytes32 intentId, uint256 usdcBudget, string calldata action) external {
        require(usdcBudget > 0, "budget=0");
        require(bytes(action).length > 2, "action too short");
        budgets[intentId] = usdcBudget;
        emit IntentRegistered(msg.sender, intentId, usdcBudget, action);
    }

    function settleIntent(bytes32 intentId, bool approved, string calldata reason) external {
        require(msg.sender == owner, "only owner");
        require(budgets[intentId] > 0, "unknown intent");
        emit IntentSettled(intentId, approved, reason);
    }
}
