class CoporationUser < ApplicationRecord
  belongs_to :user
  belongs_to :coporation
  validates :user_id, presence: true
  validates :coporation_id, presence: true
end
