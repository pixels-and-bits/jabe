class EntriesController < ApplicationController
  include JabeHelper

  before_filter :ensure_current_post_url, :only => :show
  helper_method :entry, :comment

  def index
    @entries = Entry.published.paginate(
      :page => (params[:page] || 1),
      :per_page => (SETTINGS.entries_per_page || 5)
    )
  end

  def show
    if entry.draft? && ! admin_signed_in?
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

    def ensure_current_post_url
      redirect_to public_entry_path(entry),
        :status => :moved_permanently unless entry.friendly_id_status.best?
    end

end
