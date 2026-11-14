class PotholesController < ApplicationController
  def index
    @potholes = Pothole.order(created_at: :desc).limit(500)
  end

  def show
    @pothole = Pothole.find(params[:id])
  end

  def new
    @pothole = Pothole.new(severity: 2)
  end

  def create
    @pothole = Pothole.new(pothole_params)
    if @pothole.save
      redirect_to @pothole, notice: "Thanks! The pothole has been reported."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def pothole_params
    params.require(:pothole).permit(:description, :latitude, :longitude, :address, :severity)
  end
end
