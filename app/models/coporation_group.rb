class CoporationGroup < ApplicationRecord
  belongs_to :group
  belongs_to :coporation
  validates :group_id, presence: true
  validates :coporation_id, presence: true
end
