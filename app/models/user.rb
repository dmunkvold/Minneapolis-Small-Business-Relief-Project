class User < ApplicationRecord
  has_many :businesses
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  def has_business?
    if @user.businesses.any?
      return true
    else
      return false
    end
  end

  def verify_contact(contactString)
    #verify url or phone number
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
