class SessionsController < ApplicationController
  def index
  	if params[:account]!= nil 
  		redirect_to address_index_path
  	end
  end

  def show
  	@account = params[:account]
  	@password = params[:password]
  end
end
