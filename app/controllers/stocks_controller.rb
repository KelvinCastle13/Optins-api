class StocksController < ApplicationController
  def index
    stocks = Stock.all

    render json: stocks
  end

  def show
    stock = Stock.find(params[:id])

    render json: stock
  end

  def create
    stock = Stock.create!(
      name: params["name"],
    )

    render json: stock, status: :created
  end

  def update
    stock = Stock.find(params[:id])
    if
    stock.update(
      name: params["name"] || stock.name,
    )
    else
      render json: { errors: stock.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    stock = Stock.find(params[:id])
    stock.delete
    head :no_content
  end
end
