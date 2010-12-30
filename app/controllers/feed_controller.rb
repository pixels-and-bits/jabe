class FeedController < ApplicationController
  def index
    @entries = Entry.published.paginate(
      :page => (params[:page] || 1),
      :per_page => (SETTINGS.entries_per_page || 5)
    )
  end
end
