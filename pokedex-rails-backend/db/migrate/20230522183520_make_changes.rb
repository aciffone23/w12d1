class MakeChanges < ActiveRecord::Migration[7.0]
  def change
    add_index :moves, :name, unique: true
  end
end
