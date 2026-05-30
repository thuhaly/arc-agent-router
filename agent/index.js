const ARC = { chainId: 5042002, rpc: 'https://rpc.testnet.arc.network', usdcDecimals: 6 };
function scoreIntent(intent) {
  const budget = Number(intent.usdcBudget || 0);
  const risk = budget > 100000000 ? 'high' : budget > 10000000 ? 'medium' : 'low';
  return { approved: risk !== 'high', risk, arc: ARC, reason: risk === 'high' ? 'manual review required' : 'within policy' };
}
module.exports = { ARC, scoreIntent };
if (require.main === module) console.log(scoreIntent({ usdcBudget: 2500000 }));
