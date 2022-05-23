class AddWorkshopsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :workshop, :string
  end
end
