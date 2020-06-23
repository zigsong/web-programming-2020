class RemoveStringFromMembers < ActiveRecord::Migration[6.0]
  def change
    remove_column :members, :string, :string
  end
end
