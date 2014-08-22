class AddMessageToLetter < ActiveRecord::Migration
  def change
    add_column :letters, :message, :text
  end
end
