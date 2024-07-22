class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :plants

  # def plants
  #   Plant.where(user_id: id)
  # end

end
