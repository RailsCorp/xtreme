class UserAdmin < ApplicationRecord
  belongs_to :user
  belongs_to :admin_user
  validates :user_id, presence: true
  validates :admin_user_id, presence: true
end
