# frozen_string_literal: true
# Business model

class Business < ApplicationRecord
  belongs_to :user
  belongs_to :community

  validates :name, :status, :community_id, :user_id, presence: true
end
