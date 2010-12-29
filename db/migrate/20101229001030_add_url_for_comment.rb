class AddUrlForComment < ActiveRecord::Migration
  def self.up
    add_column :comments, :url, :string
  end

  def self.down
    remove_column :comments, :url
  end
end
