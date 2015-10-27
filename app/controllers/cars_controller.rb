class CarsController < ApplicationController
  layout "twitter"

  #TODO
  #before_action :confirm_login
  before_action :set_car, only: [:show, :edit, :update, :destroy]
  before_action :set_model
  # GET /cars
  # GET /cars.json
  def index
    if params[:model_id]
      @cars = @model.cars.sorted
    else
      @cars = Car.sorted
    end
  end

  # GET /cars/1
  # GET /cars/1.json
  def show
    @car_prices = @car.car_prices
  end

  # GET /cars/new
  def new
    @car = Car.new
    @models = Model.sorted
  end

  # GET /cars/1/edit
  def edit
    @models = Model.sorted
  end

  # POST /cars
  # POST /cars.json
  def create
    @car = Car.new(car_params)
    @models = Model.sorted
    respond_to do |format|
      if @car.save
        format.html { redirect_to @car, notice: 'Car was successfully created.' }
        format.json { render :show, status: :created, location: @car }
      else
        format.html { render :new }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cars/1
  # PATCH/PUT /cars/1.json
  def update
    respond_to do |format|
      if @car.update(car_params)
        format.html { redirect_to @car, notice: 'Car was successfully updated.' }
        format.json { render :show, status: :ok, location: @car }
      else
        format.html { render :edit }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cars/1
  # DELETE /cars/1.json
  def destroy
    @car.destroy
    respond_to do |format|
      format.html { redirect_to cars_url, notice: 'Car was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car
      @car = Car.find(params[:id])
    end

    def set_model
      if params[:model_id]
        @model = Model.find(params[:model_id])
      end
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def car_params
      params.require(:car).permit(:model_id, :name, :visible, :permalink, :counter, :description, :position, :year, :image)
    end
end
