class MessageController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_filter :cors_prefligh