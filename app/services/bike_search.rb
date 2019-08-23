class BikeSearch
  def initialize(params)
    puts params
    @params = params
    @bikes = Bike.all
  end

  def search
    filter_by_price if @params[:price].present?
    filter_by_category if @params[:category].present?
    filter_by_motor if @params[:motor].present?
    filter_by_localisation if @params[:localisation].present?

    @bikes
  end

  private

  def filter_by_price
    @bikes = @bikes.where('price < ?', @params[:price])
  end

  def filter_by_category
    @bikes = @bikes.where(category: @params[:category])
  end

  def filter_by_motor
    @bikes = @bikes.where(motor: @params[:motor])
  end

  def filter_by_localisation
    @bikes = @bikes.joins(:user).where(users: { localisation: @params[:localisation] })
  end
end
