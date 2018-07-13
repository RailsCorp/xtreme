class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :members, dependent: :destroy
  has_many :groups, through: :groups
  has_many :tasks, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :name, presence: true
end
