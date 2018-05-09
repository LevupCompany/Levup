class Order < ApplicationRecord
  has_many :messages
  has_many :steps
  has_many :documents
  validates :user_name, presence: true
  validates :user_email, presence: true
  validates :user_phone, presence: true
  validates :user_password, confirmation: true
  validates :user_password_confirmation, presence: true
  validates :user_name, presence: true

end
