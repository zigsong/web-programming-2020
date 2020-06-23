class AddBdayToMembers < ActiveRecord::Migration[6.0]
  def change
    add_column :members, :bday, :string
    add_column :members, :string, :string
  end
end
