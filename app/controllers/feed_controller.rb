class FeedController < ApplicationController
  def index
    @entries = Entry.published.page(params[:page]).
      per(SETTINGS.entries_per_page || 5)
  end
end
