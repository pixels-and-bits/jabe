class Entry < ActiveRecord::Base
  has_many :comments

  default_scope :order => 'published_at DESC'
  scope :drafts, :conditions => { :draft => true }
  scope :published, :conditions => { :draft => false }
end
