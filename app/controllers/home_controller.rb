class HomeController < ApplicationController
  def hello
  	@color_white = params[:color_white]
  end
end
