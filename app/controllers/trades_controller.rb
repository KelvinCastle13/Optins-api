class TradesController < ApplicationController
  def index
    trades = Trade.includes(:legs).all

    render json: trades.as_json(include: :legs)
  end

  def show
    trade = Trade.find(params[:id])

    render json: trade
  end

  def create
    strategy = Strategy.find_by(name: params[:strategy_name])

    trade = Trade.create!(
      stock_name: params["stock_name"],
      strategy: strategy,
      profit_loss: params["profit_loss"],
    )

    params[:legs].each do |leg_params|
      trade.legs.create!(
        leg_params.permit(:leg_type, :side, :expiration, :strike, :contracts)
                  .merge(strategy_id: strategy.id)
      )
    end

    render json: trade.as_json(include: :legs), status: :created
  end

  def update
    trade = Trade.find(params[:id])
    trade.update(
      stock_name: params["stock_name"] || trade.stock_name,
      strategy_name: params["strategy_name"] || trade.strategy_name,
      profit_loss: params["profit_loss"] || trade.profit_loss,
    )

    render json: trade.as_json(include: :legs),  status: :created
  end

  def destroy
    trade = Trade.find(params[:id])
    trade.destroy
    head :no_content
  end

  private

  def trade_params
    params.permit(:stock_name, :strategy_name, :profit_loss, legs: [ :leg_type, :side, :expiration, :strike, :contracts ])
  end
end
