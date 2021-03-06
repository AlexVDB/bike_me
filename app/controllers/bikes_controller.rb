class BikesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :search, :show]
  before_action :set_bike, only: [:show, :edit, :update, :destroy]

  def search
  end

  def index
    @bikes = BikeSearch.new(params).search
    @markers = @bikes.map do |bike|
      {
        lat: bike.user.latitude,
        lng: bike.user.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { bike: bike })

      }

    end
  end

  def show
    @bike = Bike.find(params[:id])
    # modifs pour display le formulaire de reservation dans le show d'un bike
    @reservation = Reservation.new
  end

  def manage
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    if @bike.save
      redirect_to manage_bike_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @bike.update(bike_params)

    redirect_to manage_bike_path
  end

  def destroy
    @user = @bike.user
    @bike.destroy

    redirect_to user_path(@user)
  end

  private

  def set_bike
    @bike = Bike.find(params[:id])
  end

  def bike_params
    params.require(bike).permit(:title, :description, :category, :motor, :price, :localisation, :photo)
  end
end
