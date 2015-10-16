class EgyptController < ApplicationController
  layout 'egypt'
  def index

  end

  def companies
    @company = Brand.where(:permalink => params[:permalink], :visible => true).first
    if @company.nil?
      redirect_to(:action => 'index')
    end
  end

  def vehicles
    @vehicle = Model.where(:permalink => params[:permalink], :visible => true).first
    if @vehicle.nil?
      redirect_to(:action => 'index')
    end
  end

  def motors
    @car = Car.where(:permalink => params[:permalink], :visible => true).first
    if @car.nil?
      redirect_to(:action => 'index')
    end
  end

  def dealers

  end

  def newcars
    
  end

end
