class CreateLetters < ActiveRecord::Migration
  def change
    create_table :letters do |t|
      t.string :name
      t.string :email
      t.string :subject
      t.string :body

      t.timestamps
    end
  end
end
