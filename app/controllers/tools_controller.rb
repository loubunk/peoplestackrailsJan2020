class ToolsController < ApplicationController
  		
  ##### for devise gem 
  before_action :authenticate_user!

  def index
  end
end
