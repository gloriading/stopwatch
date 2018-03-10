class Api::V1::LapsController < Api::ApplicationController

  def create
    lap = Lap.new lap_params
    # lap.record = 
    if lap.save
      render json: record
    else
      render json: { error: record.errors.full_messages}
    end
  end

	private
  def lap_params
    params.require(:lap).permit(:lap_time)
  end

end
