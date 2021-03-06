FactoryBot.define do
  factory :group do
    name "test"
    introduce "hogehoge"
    image Rack::Test::UploadedFile.new(File.join(Rails.root, "public/images/img_0813.png"))
    created_at { Faker::Time.between(5.days.ago, 3.days.ago, :all) }
    updated_at { Faker::Time.between(2.days.ago, 1.days.ago, :all) }
  end
end
