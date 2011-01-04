class Comment < ActiveRecord::Base
  if defined?(Gravtastic)
    include Gravtastic
    gravtastic :size => 64
  end

  belongs_to :entry
  default_scope :order => 'created_at ASC'
  before_validation :bot_check
  validates_presence_of :name, :email, :body, :message => 'Required'

  attr_accessor :nickname

  private

    def bot_check
      unless self.nickname.blank?
        errors.add(:nickname, 'You shouldn\'t have seen this...')
        false
      end
    end
end
