class Comment < ActiveRecord::Base
  belongs_to :entry
  default_scope :order => 'created_at ASC'
  validates_presence_of :name, :email, :body, :message => 'Required'
end
