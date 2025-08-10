class TradesController < ApplicationController
  def index
    trades = Trade.includes(:legs).all

    render json: trades.as_json(includes: :legs)
  end

  def show
    trade = Trade.find(params[:id])

    render json: trade
  end

  def create
    trade = Trade.create!(
      stock_name: params["stock_name"],
      strategy_name: params["strategy_name"],
      profit_loss: params["profit_loss"],
    )

    params[:legs].each do |leg_params|
      trade.legs.create!(
        leg_params.permit(:type, :side, :expiration, :strike, :contracts)
      )
    end

    render json: trade.as_json(includes: :legs), status: :created
  end

  def update
    trade = Trade.find(params[:id])
    trade.update(
      stock_name: params["stock_name"] || trade.stock_name,
      strategy_name: params["strategy_name"] || trade.strategy_name,
      profit_loss: params["profit_loss"] || trade.profit_loss,
    )

    render json: trade.as_json(includes: :legs),  status: :created
  end

  def destroy
    trade = Trade.find(params[:id])
    trade.delete
    head :no_content
  end
end
