class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :orders
  has_many :tickets, through: :orders
  has_many :reservations, through: :tickets
  has_many :lessons, through: :reservations

  validates :name, presence: true
end
