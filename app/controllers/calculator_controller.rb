class CalculatorController < ApplicationController
  def index
  	@ticker = Blockchain::get_ticker()
  	@address = params[:address]
  	@balance = (params[:balance]