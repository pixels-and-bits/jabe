class AddUrlToComment < ActiveRecord::Migration
  def self.up
    add_column :entries, :url, :string
  end

  def self.down
    remove_column :entries, :url
  end
end
