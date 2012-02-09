# This migration comes from jabe (originally 20101230010438)
class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :jabe_comments do |t|
      t.integer :entry_id
      t.string :name
      t.string :email
      t.string :url
      t.text :body

      t.timestamps
    end

    add_index :jabe_comments, :entry_id
  end

  def self.down
    drop_table :jabe_comments
  end
end
