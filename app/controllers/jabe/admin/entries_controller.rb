module Jabe
  class Admin::EntriesController < Admin::BaseController
    helper_method :entry
    before_filter :set_is_draft, :only => [:create, :update]

    def index
      @drafts  = Entry.drafts
      @published = Entry.published
    end

    def create
      if entry.save
        redirect_to(admin_entries_path, :notice => message)
      else
        render :new
      end
    end

    def update
      if entry.update_attributes(params[:entry])
        redirect_to(admin_entries_path, :notice => message)
      else
        render :edit
      end
    end

    def destroy
      entry.destroy
      redirect_to admin_entries_path
    end

    private

      def entry
        @entry ||= params[:id].blank? ?
          Entry.new(params[:entry]) :
          Entry.find(params[:id])
      end

      def set_is_draft
        params[:entry][:draft] = (params[:commit] =~ /draft/i).present?
      end

      def message
        entry.draft ? "Entry was saved as a draft." : "Entry was published."
      end
  end
end
