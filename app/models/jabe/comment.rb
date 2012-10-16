module Jabe
  class Comment < ActiveRecord::Base
    if defined?(Gravtastic)
      include Gravtastic
      is_gravtastic :size => 64
    end

    attr_accessor :nickname

    belongs_to :entry
    default_scope :order => 'created_at ASC'

    before_validation :bot_check, :sanitize
    validates_presence_of :name, :email, :body, :message => 'Required'

    acts_as_textiled :body

    def send_notification(request)
      begin
        CommentMailer.notification(self, request).deliver
      rescue => e
        logger.error "#{e}\n#{e.backtrace.join("\n")}"
      end
    end

    private

      def bot_check
        unless self.nickname.blank?
          errors.add(:nickname, 'You shouldn\'t have seen this...')
          return false
        end
      end

      def sanitize
        self.email = Sanitize.clean(email)
        self.url = Sanitize.clean(url)
        self.body = Sanitize.clean(body)
      end
  end
end
