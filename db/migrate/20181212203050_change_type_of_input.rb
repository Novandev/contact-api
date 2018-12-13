class ChangeTypeOfInput < ActiveRecord::Migration[5.2]
  def change
    change_column :contacts, :number, :integer, limit: 8
  end
end
