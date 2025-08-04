class StrategiesController < ApplicationController
  def index
    strategies = Strategy.includes(:option_legs).all

    render json: strategies.as_json(include: :option_legs)
  end

  def show
    strategy = Strategy.includes(:option_legs).find(params["id"])

    render json: strategy.as_json(include: :option_legs)
  end

  def create
    strategy = Strategy.create(
      name: params["name"],
      description: params["description"],
    )

    render json: { message: "Strategy Created" }
  end

  def update
    strategy  = Strategy.find(params["id"])

    strategy.update(
      name: params["name"] || strategy.name,
      description: params["description"] || strategy.description,
    )

    render json: { message: "Strategy updated" }
  end

  def destroy
    strategy = Strategy.find(params["id"])

    strategy.destroy

    render json: { message: "Strategy Deleted!" }
  end
end
