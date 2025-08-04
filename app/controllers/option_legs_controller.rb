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
    optionLeg = OptionLeg.create(
      leg_type: ActiveModel::Type::Boolean.new.cast(params["leg_type"]),
      leg_action: ActiveModel::Type::Boolean.new.cast(params["leg_action"]),
      expiration: params["expiration"],
      strike_type: params["strike_type"],
      strike_value: params["strike_value"],
      strategy_id: params["strategy_id"],
    )

    if optionLeg.persisted?
      render json: { message: "optionLeg Created" }
    else
      render json: { errors: optionLeg.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    optionLeg  = OptionLeg.find(params["id"])

    optionLeg.update(
      leg_type: ActiveModel::Type::Boolean.new.cast(params["leg_type"]) || optionLeg.leg_type,
      leg_action: ActiveModel::Type::Boolean.new.cast(params["leg_action"]) || optionLeg.leg_action,
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
