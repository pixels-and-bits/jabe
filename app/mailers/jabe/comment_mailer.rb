module Jabe
  class CommentMailer < ActionMailer::Base
    def notification(comment, request)
      @comment = comment
      @request = request

      from Jabe::SETTINGS.mail_from || 'edit-me-in-settings@example.com'

      mail(:to => Admin.all.map(&:email),
        :subject => "Comment on: #{comment.entry.title}"
      )
    end
  end
end
