class SignupController < ApplicationController
  def index
  	
  end
  def show
  	@password=params[:password]
  	@confirm_password=params[:confirm_password]
  	@email=params[:email]
  	i