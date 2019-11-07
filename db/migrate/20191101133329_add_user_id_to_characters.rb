# frozen_string_literal: true

class AddUserIdToCharacters < ActiveRecord::Migration[6.0]
  def change
    add_reference :characters, :user, null: false, foreign_key: true
    add_index :characters, %i[user_id name]
  end
end
