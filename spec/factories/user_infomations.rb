# == Schema Information
#
# Table name: user_infomations
#
#  id         :bigint(8)        not null, primary key
#  role       :string(255)
#  department :string(255)
#  image      :text(65535)
#  user_id    :bigint(8)        not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :user_infomation do
    name "test"
    role "MyString"
    department "Test"
    image Rack::Test::UploadedFile.new(File.join(Rails.root, "public/images/img_0813.png"))
    association :user, factory: :user
  end
end
