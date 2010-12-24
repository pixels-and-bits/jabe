class HomeController < ApplicationController
  def index
    @entries = Entry.published
  end
end
