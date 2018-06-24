class User < ApplicationRecord
  has_one :like
  validates :email, uniqueness: true, presence: true
  validates :first_name, presence: true
end
