// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
import "../src/AgentRouter.sol";

contract AgentRouterTest {
    AgentRouter app;
    constructor() { app = new AgentRouter(); }
    function testRegisterIntent() public {
        bytes32 id = keccak256("intent-1");
        app.registerIntent(id, 1000000, "pay merchant with USDC");
        require(app.budgets(id) == 1000000, "budget mismatch");
    }
}
