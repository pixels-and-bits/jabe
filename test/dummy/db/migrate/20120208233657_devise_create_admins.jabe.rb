# This migration comes from jabe (originally 20101230010436)
class DeviseCreateAdmins < ActiveRecord::Migration
  def self.up
    create_table(:jabe_admins) do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable

      # t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable


      t.timestamps
    end

    add_index :jabe_admins, :email,                :unique => true
    add_index :jabe_admins, :reset_password_token, :unique => true
    # add_index :jabe_admins, :confirmation_token,   :unique => true
    # add_index :jabe_admins, :unlock_token,         :unique => true
  end

  def self.down
    drop_table :jabe_admins
  end
end
