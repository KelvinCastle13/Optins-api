class LegsController < ApplicationController
  def index
    legs = Leg.all

    render json: legs
  end

  def show
    leg = Leg.find(params[:id])

    render json: leg
  end

  def create
    created_legs = []
    errors = []

    params[:legs].each do |leg_params|
      leg = Leg.create(
        leg_type: params["leg_type"],
        side: params["side"],
        expiration: params["expiration"],
        strike: params["strike"],
        contracts: params["contracts"],
        strategy_id: params["strategy_id"]
      )

      if leg.save
        created_legs << leg
      else
        errors << { leg: leg_params, errors: leg.errors.full_messages }
      end
  end

  if errors.empty?
    render json: ccreated_legs, status: :created
  else
    render json: { created: created_legs, errors: errors }
  end
end

  def update
    leg = Leg.find(params[:id])
    if leg.update(
      leg_type: params["leg_type"] || leg.leg_type,
      side: params["side"] || leg.side,
      expiration: params["expiration"] || leg.expiration,
      strike: params["strike"] || leg.strike,
      contracts: params["contracts"] || leg.contracts,
      strategy_id: params["strategy_id"] || leg.strategy_id,
    )
      render json: leg
    else
      render json: { errors: leg.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    leg = Leg.find(params[:id])
    leg.destroy

    render json: { message: "Leg Deleted" }
  end
end
