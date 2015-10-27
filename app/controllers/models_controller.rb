class ModelsController < ApplicationController
  layout "twitter"

  #TODO
  #before_action :confirm_login
  before_action :set_model, only: [:show, :edit, :update, :destroy]
  before_action :set_brand
  # GET /models
  # GET /models.json
  def index
    if params[:brand_id]
      @models = @brand.models.all.sorted
    else
      @models = Model.sorted
    end
  end

  # GET /models/1
  # GET /models/1.json
  def show
  end

  # GET /models/new
  def new
    @model = Model.new
    @brands = Brand.sorted
  end

  # GET /models/1/edit
  def edit
    @brands = Brand.sorted
    if params[:brand_id]
      @brand = Brand.find(params[:brand_id])
    end
  end

  # POST /models
  # POST /models.json
  def create
    @model = Model.new(model_params)
    respond_to do |format|
      if @model.save
        format.html { redirect_to @model, notice: 'Model was successfully created.' }
        format.json { render :show, status: :created, location: @model }
      else
        format.html { render :new }
        format.json { render json: @model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /models/1
  # PATCH/PUT /models/1.json
  def update
    @brands = Brand.sorted
    respond_to do |format|
      if @model.update(model_params)
        format.html { redirect_to @model, notice: 'Model was successfully updated.' }
        format.json { render :show, status: :ok, location: @model }
      else
        format.html { render :edit }
        format.json { render json: @model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /models/1
  # DELETE /models/1.json
  def destroy
    @model.destroy
    respond_to do |format|
      format.html { redirect_to models_url, notice: 'Model was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_model
      @model = Model.find(params[:id])
    end

    def set_brand
      if params[:brand_id]
        @brand = Brand.find(params[:brand_id])
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def model_params
      params.require(:model).permit(:brand_id, :name, :visible, :permalink, :counter, :description, :position, :year, :avatar)
    end
end
