class CreateSettings < ActiveRecord::Migration
  def self.up
    create_table :settings do |t|
      t.string :site_url
      t.string :host_name
      t.string :mail_from
      t.string :site_name
      t.string :tagline
      t.string :time_zone
      t.string :google_tracker_id
      t.boolean :blackbird_enabled
      t.integer :entries_per_page

      t.timestamps
    end
  end

  def self.down
    drop_table :settings
  end
end
