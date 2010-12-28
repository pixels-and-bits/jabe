class EntriesController < ApplicationController
  helper_method :entry, :comment

  private

    def entry
      @entry ||= Entry.find(params[:id])
    end
    
    def comment
      @comment ||= entry.comments.new
    end
end
