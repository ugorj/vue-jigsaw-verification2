
class AddressController < ApplicationController
  def show
    
  end

  def index
  	user = params[:account]
    pass = params[:password]
    @addresses=''
    personal_wallet = Blockchain::Wallet.new(user,pass,'d469606f-9967-4b10-a695-1765039c010a')
    begin
		@addresses = personal_wallet.list_addresses()
	rescue
    	redirect_to root_path, notice: "Account or password is wrong!"
	end
  end
end