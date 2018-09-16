class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|

      t.text :subject
      t.text :location
      t.text :start_date
      t.text :start_time
      t.text :end_time
      t.text :end_date
      t.text :description
      t.integer :max_users
    end
  end
end
