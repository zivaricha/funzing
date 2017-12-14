class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :title
      t.string :description
      t.integer :user_id
      t.integer :max_participants
      t.datetime :date
      t.float :price

      t.timestamps null: false
    end
  end
end
