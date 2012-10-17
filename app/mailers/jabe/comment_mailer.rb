module Jabe
  class CommentMailer < ActionMailer::Base
    include PublicEntryUrl

    def notification(comment, request)
      @comment = comment
      @request = request

      mail(:to => Admin.all.map(&:email),
        :subject => "Comment on: #{comment.entry.title}",
        :from => Jabe::SETTINGS.mail_from || 'edit-me-in-settings@example.com'
      )
    end
  end
end
