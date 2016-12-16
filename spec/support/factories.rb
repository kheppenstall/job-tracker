FactoryGirl.define do

  factory :company do
    name       { Faker::Company.name }

    factory :company_with_jobs do
      jobs { create_list(:job, 5)}
    end
  end

  factory :job do
    title              { Faker::Company.profession }
    description        { Faker::Company.bs }
    level_of_interest  Random.new.rand(100)
    city               { Faker::Address.city }
  end

  factory :category do
    title             { Faker::Company.industry }

    factory :category_with_jobs do
      jobs { create_list(:job, 5)}
    end
  end
end