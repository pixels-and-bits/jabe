module Jabe
  class Comment < ActiveRecord::Base
    include Rakismet::Model
    include PublicEntryUrl

    if defined?(Gravtastic)
      include Gravtastic
      gravtastic :author_email, :size => 64
    end

    attr_accessor :nickname, :request

    belongs_to :entry
    default_scope :order => 'created_at ASC'
    scope :approved, :conditions => { :spam => false }

    before_validation :bot_check, :check_akismet, :sanitize
    validates_presence_of :author, :author_email, :content, :message => 'Required'

    after_create :send_notification

    acts_as_textiled :content

    def send_notification
      # begin
        CommentMailer.notification(self).deliver
      # rescue => e
      #   logger.error "#{e}\n#{e.backtrace.join("\n")}"
      # end
    end

    private

      def bot_check
        unless self.nickname.blank?
          errors.add(:nickname, 'You shouldn\'t have seen this...')
          return false
        end
      end

      def check_akismet
        self.user_ip = request.remote_ip
        self.user_agent = request.env['HTTP_USER_AGENT']
        self.referrer = request.env['HTTP_REFERER']
        self.spam = spam?
        true
      end

      def sanitize
        self.author_email = Sanitize.clean(author_email)
        self.author_url = Sanitize.clean(author_url)
        self.content = Sanitize.clean(content)
        true
      end
  end
end
