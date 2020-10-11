class QrcodeController < ApplicationController
  def index
  	@currency = params[:currency]
  	ticker = Blockchain::get_ticker()
  	ticker.keys.each do |key| 
  		if key == @currency
  			@rate=ticker[key].p15min
  		end
  	end
  	@address=params[:address]
  	@amount=params[:display]
  	@bitcoin=Blockchain::to_btc(@currency, @amount)
    url='bitcoin:'+ @address +'?amount=' + @bitcoin.to_s
    @qr = RQRCode::QRCode.new(url, :size => 4, :level => 'l'.to_sym) 
  end

  def show
  end
end
