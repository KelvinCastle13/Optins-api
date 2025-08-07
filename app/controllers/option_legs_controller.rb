class OptionLegsController < ApplicationController
  def index
    optionLegs = OptionLeg.all

    render json: optionLegs
  end

  def show
    optionLeg = OptionLeg.find(params["id"])

    render json: optionLeg
  end

  def create
    created_legs = []
    errors = []

    params[:legs].each do |leg_params|
      option_leg = OptionLeg.new(
        leg_type: leg_params["leg_type"],
        leg_action: leg_params["leg_action"],
        expiration: leg_params["expiration"],
        strike_type: leg_params["strike_type"],
        strike_value: leg_params["strike_value"],
        strategy_id: params["strategy_id"]
      )

    if option_leg.save
      created_legs << option_leg
    else
      Rails.logger.debug "❌ Failed to save OptionLeg: #{option_leg.errors.full_messages}"
      errors << { leg: leg_params, messages: option_leg.errors.full_messages }
    end
  end

  if errors.empty?
    render json: { message: "All option legs created", legs: created_legs }, status: :created
  else
    render json: { message: "Some legs failed", errors: errors }, status: :unprocessable_content
  end
end

  def update
    optionLeg  = OptionLeg.find(params["id"])

    optionLeg.update(
      leg_type: params["leg_type"] || optionLeg.leg_type,
      leg_action: params["leg_action"] || optionLeg.leg_action,
      expiration: params["expiration"] || optionLeg.expiration,
      strike_type: params["strike_type"] || optionLeg.strike_type,
      strike_value: params["strike_value"] || optionLeg.strike_value,
    )

    render json: { message: "Option Leg updated!" }
  end

  def destroy
    optionLeg = OptionLeg.find(params["id"])

    optionLeg.destroy

    render json: { message: "Option Leg Deleted!" }
  end
end
