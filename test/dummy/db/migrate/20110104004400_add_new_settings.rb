class AddNewSettings < ActiveRecord::Migration
  def self.up
    add_column :settings, :sidebar_heading, :string
    add_column :settings, :github_username, :string
    add_column :settings, :twitter_username, :string
    add_column :settings, :show_github_badge, :boolean
    add_column :settings, :facebook_url, :string
  end

  def self.down
    # remove_column :settings, :sidebar_heading
    remove_column :settings, :facebook_url
    remove_column :settings, :show_github_badge
    remove_column :settings, :twitter_username
    remove_column :settings, :github_username
  end
end
