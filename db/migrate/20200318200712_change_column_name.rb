# frozen_string_literal: true
# changing name of column in businesses from resources to description

class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :businesses, :resources, :description
  end
end
