class AccessController < ApplicationController

	layout "twitter"
	before_action :confirm_login, :except => [:login, :attempt_login, :logout]
  def index
  end

  def login
    unless session[:user_id].blank?
      redirect_to(:action => 'index')
    end
  end

  def attempt_login
  	if params[:username].present? && params[:password].present?
  		found_user = AdminUser.where(:username => params[:username]).first
  		if found_user
  			authorized_user = found_user.authenticate(params[:password])
  		end
  	end
  	if authorized_user
  		session[:user_id] = authorized_user.id
  		session[:username] = authorized_user.username
  		session[:adminstrator] = authorized_user.adminstrator
  		flash[:notice] = "You are now logged in"
  		redirect_to(:action => 'index')
  	else
  		flash[:notice] = "Invalid Isername/password combination"
  		redirect_to(:action => 'login')
  	end

  end

  def logout
  	session[:user_id] = nil
  	session[:username] = nil
  	session[:adminstrator] = nil
  	flash[:notice] = "You have logged out"
  	redirect_to(:action => 'login')
  end

  private
  def confirm_login
  	unless session[:user_id]
  		flash[:notice] = "Please Log in"
  		redirect_to(:action => 'login')
  		return false
  	else
  		return true
  	end
  end

end
