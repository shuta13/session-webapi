class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.boolean :is_admin
      t.string :user_id
      t.string :user_name

      t.timestamps
    end
  end
end
