class CommentMailer < ActionMailer::Base
  default :from =>  Jabe::SETTINGS.mail_from

  def notification(comment, request)
    @comment = comment
    @request = request

    mail(:to => Admin.all.map(&:email),
      :subject => "Comment on: #{comment.entry.title}"
    )
  end
end
