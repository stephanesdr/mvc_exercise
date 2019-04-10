# frozen_string_literal: true

class AddConfirmableToDevise < ActiveRecord::Migration[5.2]
  def up
    change_table :admins, bulk: true do |t|
      t.string :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.index :confirmation_token, unique: true
    end
    # Admin.update_all confirmed_at: Time.zone.now
  end

  def down
    remove_columns :admins, :confirmation_token, :confirmed_at, :confirmation_sent_at
    # remove_columns :admins, :unconfirmed_email # Only if using reconfirmable
  end
end
