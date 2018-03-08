class Api::V1::RecordsController < Api::ApplicationController


  def index
    records = Record.order(created_at: :desc)
    render json: records
  end

  def show
    record = Record.find params[:id]
    render json: record
  end

  def create
    record = Record.new record_params
    if record.save
      render json: record
    else
      render json: { error: record.errors.full_messages}
    end
  end

	private
  def record_params
    params.require(:record).permit(:start_time, :end_time)
  end

end
