class HomeController < ApplicationController

  def index
    render :string => 'This is the main homepage'
  end

end