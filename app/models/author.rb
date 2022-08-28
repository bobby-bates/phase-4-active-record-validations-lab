class Author < ApplicationRecord
  # byebug
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :phone_number, length: { is: 10 }
end
