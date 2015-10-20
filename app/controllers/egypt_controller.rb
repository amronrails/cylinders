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

  def compare
    if params[:permalink1]
      @car1=Car.where(:permalink => params[:permalink1]).first
    end
    if params[:permalink2]
      @car2=Car.where(:permalink => params[:permalink2]).first
    end
    if params[:permalink3]
      @car3=Car.where(:permalink => params[:permalink3]).first
    end
    if params[:permalink4]
      @car4=Car.where(:permalink => params[:permalink4]).first
    end
  end

end
