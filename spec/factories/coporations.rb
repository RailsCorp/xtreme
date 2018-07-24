# == Schema Information
#
# Table name: coporations
#
#  id          :bigint(8)        not null, primary key
#  name        :string(255)      not null
#  image       :text(65535)
#  introduce   :text(65535)
#  owner       :string(255)      not null
#  address     :text(65535)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  established :datetime         not null
#

FactoryBot.define do
  factory :coporation do
    name "MyString"
    image "MyText"
    introduce "MyText"
    owner "MyString"
    address "MyText"
  end
end
