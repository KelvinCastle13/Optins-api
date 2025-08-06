OptionLeg.delete_all
Strategy.delete_all

Strategy.create!(
  name: "Bull Call Spread",
  description: "A bull call spread is a bullish options strategy that involves buying a call option at a lower strike price and selling a call option at a higher strike price, both with the same expiration date. The goal is to profit from a moderate rise in the price of the underlying asset. The maximum profit occurs if the asset’s price rises above the higher strike price at expiration, as the sold call option is exercised, and the bought call option gains maximum value. The maximum loss is limited to the net premium paid to enter the position (the cost of the long call minus the premium received from the short call). The bull call spread is often used when the trader expects a moderate increase in price and wants to limit both potential risk and reward. This strategy is less expensive than buying a single call outright but also caps the maximum profit.",
  image_url: "https://www.projectfinance.com/wp-content/uploads/elementor/thumbs/Bull-Call-Spread-2-pnbz4qavz79q2pkxdo48u011tm3lt3y7ffqtecq6q0.jpg",
  leg_count: 2
)

Strategy.create!(
  name: "Bull Put Spread",
  description: "A bull put spread is a bullish options strategy where you sell a put option at a higher strike price and buy a put option at a lower strike price, both with the same expiration date. This strategy is used when you expect the price of the underlying asset to rise or stay above the higher strike price. The maximum profit occurs if the asset’s price stays above the higher strike price at expiration, as both put options expire worthless and the trader keeps the premium received from selling the put. The maximum loss is limited to the difference between the strike prices, minus the net premium received. The bull put spread is a lower-cost alternative to the bull call spread, and while it offers limited profit, it also comes with defined risk. It’s often used when the trader expects moderate bullish movement or a stable market.",
  image_url: "https://www.projectfinance.com/wp-content/uploads/elementor/thumbs/Bull-Put-Spread-1-pnbz4e2zicszvs2od0u3fl423lru11lp1r9i5r8ayw.jpg",
  leg_count: 2
)

Strategy.create!(
  name: "Iron Condor",
  description: "An iron condor is a neutral options strategy designed to profit from low volatility in the underlying asset. It involves four options: selling an out-of-the-money (OTM) put, buying a further OTM put, selling an OTM call, and buying a further OTM call, all with the same expiration date. The strategy creates a range where the trader expects the asset's price to stay within. The maximum profit occurs if the asset’s price remains between the two middle strike prices at expiration, as all options expire worthless, allowing the trader to keep the net premium received. The maximum loss is limited to the difference between the strike prices of the put or call spreads, minus the net premium received. Iron condors are popular in range-bound markets and offer a limited risk-to-reward ratio, with defined risk and profit potential.",
  image_url: "https://www.projectfinance.com/wp-content/uploads/elementor/thumbs/Long-Iron-Condor-1-pnqpjyrzrq6c505q325z30rtv6qudd512n4k8xncrs.png",
  leg_count: 4
)

Strategy.create!(
  name: "Butterfly Spread",
  description: "A butterfly spread is an options strategy that combines both a bull spread and a bear spread, aiming to profit from low volatility in the underlying asset. It involves buying one lower strike option, selling two at-the-money options (same strike), and buying one higher strike option, all with the same expiration date. The goal is for the underlying asset’s price to land near the middle strike price at expiration. The maximum profit occurs if the asset’s price is exactly at the middle strike, where the sold options expire worthless, and the purchased options have intrinsic value. The maximum loss is limited to the net premium paid to enter the position, which occurs if the asset’s price moves far away from the middle strike, causing all options to expire worthless. Butterfly spreads are typically used in low-volatility environments, offering a defined risk-to-reward ratio.",
  image_url: "https://www.projectfinance.com/wp-content/uploads/elementor/thumbs/Copy-of-Long-Butterfly-FINAL-2-pnc1g5h7b0oeuu8wube3idceqcppaaww0jhzk0k4gw.jpg",
  leg_count: 4
)

Strategy.create!(
  name: "Straddle",
  description: "A straddle is an options strategy used when a trader expects significant volatility in the price of the underlying asset but is unsure of the direction (up or down). It involves buying both a call and a put option with the same strike price and expiration date. The goal is to profit from a large price move in either direction. The maximum profit is unlimited on the upside (if the price rises significantly) and substantial on the downside (limited to the strike price minus the total premium paid). The maximum loss occurs if the underlying asset's price stays exactly at the strike price at expiration, causing both options to expire worthless, with the loss equal to the total premium paid for both options. Straddles are often used in events like earnings reports or other major announcements where big price movements are expected but the direction is uncertain.",
  image_url: "https://www.projectfinance.com/wp-content/uploads/2021/12/Long-Straddle.jpg",
  leg_count: 4
)

Strategy.create!(
  name: "Strangle",
  description: "A strangle is a similar strategy to the straddle, but with a key difference: it involves buying a call and a put option on the same underlying asset, but with different strike prices (both out-of-the-money) and the same expiration date. The call option has a higher strike price, while the put option has a lower strike price. Like the straddle, the goal is to profit from significant price movement in either direction. The maximum profit is unlimited on the upside (if the price rises significantly) and substantial on the downside (limited by the strike price of the put). The maximum loss occurs if the asset's price stays between the two strike prices at expiration, causing both options to expire worthless, with the loss equal to the total premium paid for both options. Strangles are typically cheaper to enter than straddles because the options are out-of-the-money, but they require a larger move in the underlying asset to become profitable.",
  image_url: "https://www.projectfinance.com/wp-content/uploads/elementor/thumbs/Long-Strangle-pnbwv7qqoiabf3wo5z7ejj4spzruy6qcm2qc1scob8.jpg",
  leg_count: 4
)
