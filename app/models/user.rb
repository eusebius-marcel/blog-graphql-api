class User < ApplicationRecord
  has_many :posts

  def full_name
    "#{first_name} #{last_name}"
  end

  def full_address
    "#{street}, No. #{number}, #{city} #{postcode}, #{country}"
  end
end
