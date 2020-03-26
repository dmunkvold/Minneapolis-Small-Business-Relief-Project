# frozen_string_literal: true
# Community model

class Community < ApplicationRecord
  has_many :businesses
end
