class RemoveBodyFromLetter < ActiveRecord::Migration
  def change
    remove_column :letters, :body, :string
  end
end
