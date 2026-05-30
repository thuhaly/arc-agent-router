const {scoreIntent}=require('./index'); const r=scoreIntent({usdcBudget:2500000}); if(!r.approved) throw new Error('expected approved'); console.log('agent tests ok');
