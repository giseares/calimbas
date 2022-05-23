class AddWorkshopToCubicacions < ActiveRecord::Migration[6.1]
  def change
    add_column :cubicacions, :workshop, :string, default: "N/A"
  end
end
