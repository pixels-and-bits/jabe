class CommentsController < Admin::BaseController
  layout 'application'
  skip_before_filter :authenticate_admin!, :only => [ :create, :new ]
  helper_method :entry, :comment

  def create
    if comment.save
      redirect_to entry_path(entry), :notice => 'Your comment was submitted'
    else
      render 'entries/show'
    end
  end

  private

    def entry
      @entry ||= Entry.find(params[:entry_id])
    end

    def comment
      @comment ||= params[:id].blank? ?
        entry.comments.new(params[:comment]) :
        Comment.find(params[:id])
    end
end
