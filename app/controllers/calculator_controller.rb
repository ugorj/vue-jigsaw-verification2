class CalculatorController < ApplicationController
  def index
  	@ticker = Blockchain::get_ticker()
  	@address = params[:address]
  	@balance = (params[:balance].to_f/(10**8)).to_f
  end
end
