class EntriesController < ApplicationController
  helper_method :entry

  private

    def entry
      @entry ||= Entry.find(params[:id])
    end
end
