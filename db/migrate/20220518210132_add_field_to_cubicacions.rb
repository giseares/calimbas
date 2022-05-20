class AddFieldToCubicacions < ActiveRecord::Migration[6.1]
  def change
    add_column :cubicacions, :patente, :string
    add_column :cubicacions, :modelo, :string
  end
end
