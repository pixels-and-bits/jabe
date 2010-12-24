class AddSlugToEntry < ActiveRecord::Migration
  def self.up
    add_column :entries, :cached_slug, :string
  end

  def self.down
    remove_column :entries, :cached_slug
  end
end
