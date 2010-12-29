class EntriesController < ApplicationController
  helper_method :entry, :comment

  def index
    @entries = Entry.published.paginate(
      :page => (params[:page] || 1),
      :per_page => (SETTINGS.entries_per_page || 5)
    )
  end

  private

    def entry
      @entry ||= Entry.find(params[:id])
    end
    
    def comment
      @comment ||= entry.comments.new
    end
end
