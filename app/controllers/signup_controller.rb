class SignupController < ApplicationController
  def index
  	
  end
  def show
  	@password=params[:password]
  	@confirm_password=params[:confirm_password]
  	@email=params[:email]
  	if @password==@confirm_password
  		@wallet = Blockchain::create_wallet(@password, 'd469606f-9967-4b10-a695-1765039c010a', email:@email)
  	end
  end
end
