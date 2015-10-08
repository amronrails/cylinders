class AdminUserController < ApplicationController
	layout "twitter"

	before_action :confirm_login
	before_action :confirm_adminstrator

  def index
  	@admin_users = AdminUser.sorted
  end

  def edit
  	@admin_user = AdminUser.find(params[:id])
  end

  def new
  	@admin_user = AdminUser.new
  end

  def show
  	@admin_user = AdminUser.find(params[:id])
  end

  private
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
