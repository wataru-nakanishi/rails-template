class RemovePasswordFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :pwd, :string
  end
end
