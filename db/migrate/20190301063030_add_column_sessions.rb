class AddColumnSessions < ActiveRecord::Migration[5.2]
  def change
    add_column :sessions, :password, :string 
  end
end
