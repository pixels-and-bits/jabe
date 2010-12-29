class RemoveUrl < ActiveRecord::Migration
  def self.up
    remove_column :entries, :url
  end

  def self.down
    add_column :entries, :url, :string
  end
end
