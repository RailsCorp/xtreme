class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :email, presence: true
  validates :password, presence: true
  validates :encrypted_password, presence: true
  has_one :user_admin, dependent: :destroy
  has_one :user, through: :user_admin
end
