# frozen_string_literal: true
#creating business object

class CreateBusinesses < ActiveRecord::Migration[6.0]
  def change
    create_table :businesses do |t|
      t.belongs_to :user
      t.belongs_to :community
      t.string :name
      t.string :status
      t.text :resources
      t.timestamps
    end
  end
end
