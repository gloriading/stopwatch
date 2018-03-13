class Api::V1::LapsController < Api::ApplicationController
  before_action :find_record

  def create
    lap = Lap.new lap_params
    lap.record = @record
    if lap.save
      render json: lap
    else
      render json: { error: lap.errors.full_messages}
    end
  end

	private
  def lap_params
    params.require(:lap).permit(:lap_time)
  end

  def find_record
    @record = Record.find params[:record_id]
  end

end
