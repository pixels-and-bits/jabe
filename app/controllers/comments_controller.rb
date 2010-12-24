class CommentsController < Admin::BaseController
  skip_before_filter :authenticate_admin!, :only => [ :create, :new ]

  def create

    if comment.save
      redirect_to entry_path(entry), :notice => 'Your comment was submitted'
    else
      render :new
    end
  end

  private

    def entry
      @entry ||= Entry.find(params[:entry_id])
    end

    def comment
      @comment ||= params[:id].blank? ?
        entry.comments.build(params[:comment]) :
        Comment.find(params[:id])
    end
end
