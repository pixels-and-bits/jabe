module Jabe
  class EntriesController < ApplicationController
    include ApplicationHelper

    helper_method :entry, :comment

    def index
      @entries = Entry.published.
        page(params[:page]).
        per( Jabe::SETTINGS.entries_per_page || 5)
    end

    def show
      if entry.draft? && ! jabe_admin_signed_in?
        render 'public/404.html', :layout => false, :status => 404
      end
    end

    private

      def entry
        @entry ||= Entry.find(params[:id])
      end

      def comment
        @comment ||= entry.comments.new
      end

  end
end
