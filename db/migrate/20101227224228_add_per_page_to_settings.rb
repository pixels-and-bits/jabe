class AddPerPageToSettings < ActiveRecord::Migration
  def self.up
    add_column :settings, :entries_per_page, :integer
  end

  def self.down
    remove_column :settings, :entries_per_page
  end
end
