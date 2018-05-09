class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable and :omniauthable
  has_many :orders, dependent: :destroy
end
