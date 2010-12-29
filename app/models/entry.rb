class Entry < ActiveRecord::Base
  before_save :set_published_at

  has_many :comments
  has_friendly_id :title, :use_slug => true
  acts_as_textiled :body

  default_scope :order => 'published_at DESC'
  scope :drafts, :conditions => { :draft => true }
  scope :published, :conditions => { :draft => false }

  private

    def set_published_at
      self.published_at = Time.now unless draft? || self.published_at
    end
end
