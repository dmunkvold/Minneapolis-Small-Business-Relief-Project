# frozen_string_literal: true
# adding columns to businesses

class AddColumnsToBusiness < ActiveRecord::Migration[6.0]
  def change
    add_column :businesses, :pickup_contact, :string
    add_column :businesses, :delivery_contact, :string
    add_column :businesses, :relief_contact, :string
    add_column :businesses, :other_contact, :string
  end
end
