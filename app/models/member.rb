class Member < ApplicationRecord
  belongs_to :user
  belongs_to :group

  validates :name, presense: :true
end
