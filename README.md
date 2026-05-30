# arc-agent-router

AI agent routing layer for Arc USDC actions. Built for Arc testnet + Circle Agent Stack patterns.

## Arc config
- Chain ID: `5042002`
- RPC: `https://rpc.testnet.arc.network`
- Gas/payment asset: USDC, 6 decimals

## Why AI-rate high
- Agent-first UX: natural language intents become safe Arc actions.
- Circle/x402 ready: USDC payments, subscriptions, pay-per-call services.
- On-chain verification: Solidity rules engine + local simulator.

## Structure
- `contracts/`: Foundry Solidity contract + tests
- `agent/`: TypeScript agent policy/simulator
- `frontend/`: static Next.js dashboard skeleton

## Quick start
```bash
cd contracts && forge test -vv
cd ../agent && npm test
```
