FactoryBot.define do

  factory :user do
    name              {"abe"}
    email                 {"kkk@gmail.com"}
    password              {"00000000"}
    password_confirmation {"00000000"}
    img_name           {File.open("#{Rails.root}/public/test_image.jpg")}
    sex                {1}
    prefecture_id      {"1"}
    blood_type_id      {"1"}
    education_id       {"1"}
    body_id            {"1"}
    job_id             {"1"}
    income_id          {"1"}
    height_id          {"1"}
  end

end