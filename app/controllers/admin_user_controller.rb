class AdminUserController < ApplicationController
	layout "twitter"

	before_action :confirm_login
	before_action :confirm_adminstrator
  def index
  	@admin_users = AdminUser.sorted
  end

  def show
  	@admin_user = AdminUser.find(params[:id])
  end

  def new
  	@admin_user = AdminUser.new
  end

  def create
    @admin_user = AdminUser.new(admin_user_params)
  	if @admin_user.save
      flash[:notice] = "User Added"
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
  	@admin_user = AdminUser.find(params[:id])
  end

  def update

  end
  
def admin_user_params
    params.require(:admin_user).permit(:adminstrator, :username, :password)
  end



  
  def confirm_adminstrator
  	unless session[:adminstrator]
  		flash[:notice]= "You Are Not Allowed!!"
  		redirect_to(:controller => 'brands')
  		return false
  	else
  		flash[:notice]= "Take Care"
  		return true
  	end

  end


  end
