class ToolsController < ApplicationController
  		
  ##### for devise gem (add back)
	before_action :authenticate_user!

  def index
  end
end
