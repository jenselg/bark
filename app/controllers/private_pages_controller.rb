class PrivatePagesController < ApplicationController

  before_action :authenticate_user!

  def index
  end
  
end
