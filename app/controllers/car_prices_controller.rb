class CarPricesController < ApplicationController
  layout 'twitter'
  before_action :set_car
  before_action :set_agent
  before_action :set_car_price, only: [:show, :edit, :update, :destroy]
  before_action :confirm_login
  # GET /car_prices
  # GET /car_prices.json
  def index
    if params[:car_id]
      @car_prices = @car.car_prices
    elsif params[:agent_id]
      @car_prices = @agent.car_prices
    else
      @car_prices = CarPrice.all
    end  
  end

  # GET /car_prices/1
  # GET /car_prices/1.json
  def show
  end

  # GET /car_prices/new
  def new
    @car_price = CarPrice.new(:car_id => params[:car_id])
  end

  # GET /car_prices/1/edit
  def edit
  end

  # POST /car_prices
  # POST /car_prices.json
  def create
    @car_price = CarPrice.new(car_price_params)

    respond_to do |format|
      if @car_price.save
        format.html { redirect_to @car_price, notice: 'Car price was successfully created.' }
        format.json { render :show, status: :created, location: @car_price }
      else
        format.html { render :new }
        format.json { render json: @car_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car_prices/1
  # PATCH/PUT /car_prices/1.json
  def update
    respond_to do |format|
      if @car_price.update(car_price_params)
        format.html { redirect_to @car_price, notice: 'Car price was successfully updated.' }
        format.json { render :show, status: :ok, location: @car_price }
      else
        format.html { render :edit }
        format.json { render json: @car_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_prices/1
  # DELETE /car_prices/1.json
  def destroy
    @car_price.destroy
    respond_to do |format|
      format.html { redirect_to car_prices_url, notice: 'Car price was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_price
      @car_price = CarPrice.find(params[:id])
    end

    def set_car
      if params[:car_id]
        @car = Car.find(params[:car_id])
      end
    end

    def set_agent
      if params[:agent_id]
        @agent = Agent.find(params[:agent_id])
      end
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def car_price_params
      params.require(:car_price).permit(:car_id, :agent_id, :price)
    end
end
