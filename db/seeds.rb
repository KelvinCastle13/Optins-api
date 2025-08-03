OptionLeg.delete_all
Strategy.delete_all

iron_condor = Strategy.create!(
  name: "Iron Condor",
  description: "A neutral strategy combining a bear call spread and a bull put spread."
)

bull_call = Strategy.create!(
  name: "Bull Call Spread",
  description: "A debit strategy to profit from a moderate rise in stock price."
)

cash_secured_put = Strategy.create!(
  name: "Cash-Secured Put",
  description: "A strategy to buy stock at a lower price by selling a put option."
)

OptionLeg.create!([
  { strategy_id: iron_condor.id, leg_type: false, leg_action: false, expiration: "1W", strike_type: "OTM", strike_value: "5" },
  { strategy_id: iron_condor.id, leg_type: false, leg_action: true,  expiration: "1W", strike_type: "OTM", strike_value: "10" },
  { strategy_id: iron_condor.id, leg_type: true,  leg_action: false, expiration: "1W", strike_type: "OTM", strike_value: "5" },
  { strategy_id: iron_condor.id, leg_type: true,  leg_action: true,  expiration: "1W", strike_type: "OTM", strike_value: "10" }
])

OptionLeg.create!([
  { strategy_id: bull_call.id, leg_type: true, leg_action: true,  expiration: "2W", strike_type: "ATM", strike_value: "100" },
  { strategy_id: bull_call.id, leg_type: true, leg_action: false, expiration: "2W", strike_type: "OTM", strike_value: "105" }
])

OptionLeg.create!(
  strategy_id: cash_secured_put.id,
  leg_type: false, leg_action: false,
  expiration: "1M",
  strike_type: "Delta",
  strike_value: "0.30"
)
