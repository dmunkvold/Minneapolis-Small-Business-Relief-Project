class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :businesses, :resources, :description
  end
end
