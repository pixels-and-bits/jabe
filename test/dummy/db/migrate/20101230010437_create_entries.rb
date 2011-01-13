class CreateEntries < ActiveRecord::Migration
  def self.up
    create_table :entries do |t|
      t.string :cached_slug
      t.string :title
      t.text :body
      t.boolean :draft
      t.datetime :published_at
      t.timestamps
    end
  end

  def self.down
    drop_table :entries
  end
end
