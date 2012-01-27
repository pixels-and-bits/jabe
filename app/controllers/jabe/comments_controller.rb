module Jabe
  class CommentsController < Admin::BaseController
    layout 'application'
    skip_before_filter :authenticate_admin!, :only => [ :create, :new ]
    helper_method :entry, :comment

    def create
      if comment.save
        comment.send_notification(request)
        redirect_to entry_path(entry), :notice => 'Your comment was submitted.'
      else
        flash[:error] = 'Unable to submit your comment.'
        render 'entries/show'
      end
    end

    def destroy
      comment.destroy
      redirect_to entry_path(entry), :notice => 'Comment was deleted.'
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
end
