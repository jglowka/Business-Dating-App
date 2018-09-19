class RemoveUserFromEvents < ActiveRecord::Migration[5.1]
  def change
    remove_column :events, :user_id, :integer
    add_column :atendees, :role, :string
  end
end
