class AddTimezone < ActiveRecord::Migration
  def self.up
    add_column :settings, :time_zone, :string
  end

  def self.down
    remove_column :settings, :time_zone
  end
end
