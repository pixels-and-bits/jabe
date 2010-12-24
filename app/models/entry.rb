class Entry < ActiveRecord::Base
  has_many :comments
  has_friendly_id :title, :use_slug => true

  default_scope :order => 'published_at DESC'
  scope :drafts, :conditions => { :draft => true }
  scope :published, :conditions => { :draft => false }
end
