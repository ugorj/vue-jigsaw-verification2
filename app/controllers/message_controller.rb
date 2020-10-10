class MessageController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_filter :cors_preflight_check
  after_filter :cors_set_access_control_headers
  def index 
  	@money = params[:money]
    receive = params[:address]
  	address = Blockchain::get_address(receive)
  	@output = address.transactions[0].outputs[0].value
  	if @output ==  @money.to_f*(10**8)
      res = {"status" => "success"}
      respond_to do |format|
        format.html { render :index }
        format.js { render :layout => false}
        format.json { render json: res }    
      end
  	else
      res = {"status" => "error"}
      respond_to do |format|
        format.html { render :index }
        format.js { render :layout => false}
        format.json { render json: res }    
      end
  	end

  end

  def test
    address = Blockchain::get_address('1E3z7bn4ZeBa47GBBBSfWBFyw1TrXYonxS')
    @out = address.transactions[0].outputs
    @in = address.transactions[0].inputs
  end

  def success
  end

  def error
  end

  def cors_set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, DELETE, OPTIONS'
    headers['Access-Control-Allow-Headers'] = 'Origin, Content-Type, Accept, Authorization, Token'
    headers['Access-Control-Max-Age'] = "1728000"
  end
 
  def cors_preflight_check
    if request.met