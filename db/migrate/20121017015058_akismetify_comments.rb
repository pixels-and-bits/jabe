class AkismetifyComments < ActiveRecord::Migration
  def up
    rename_column :jabe_comments, :name, :author
    rename_column :jabe_comments, :email, :author_email
    rename_column :jabe_comments, :url, :author_url
    rename_column :jabe_comments, :body, :content
    add_column :jabe_comments, :permalink, :string
    add_column :jabe_comments, :user_ip, :string
    add_column :jabe_comments, :user_agent, :string
    add_column :jabe_comments, :referrer, :string
    add_column :jabe_comments, :spam, :boolean

    add_column :jabe_settings, :akismet_key, :string
    add_column :jabe_settings, :akismet_url, :string
  end

  def down
    remove_column :jabe_settings, :akismet_key
    remove_column :jabe_settings, :akismet_url

    remove_column :jabe_comments, :permalink
    remove_column :jabe_comments, :user_ip
    remove_column :jabe_comments, :user_agent
    remove_column :jabe_comments, :referrer
    remove_column :jabe_comments, :spam

    rename_column :jabe_comments, :author, :name
    rename_column :jabe_comments, :author_email, :email
    rename_column :jabe_comments, :author_url, :url
    rename_column :jabe_comments, :content, :body
  end
end
