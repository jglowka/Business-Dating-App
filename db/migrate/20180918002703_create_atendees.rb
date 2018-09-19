class CreateAtendees < ActiveRecord::Migration[5.1]
  def change
    create_table :atendees do |t|
      t.references :event
      t.references :user

      t.timestamps
    end
  end
end
