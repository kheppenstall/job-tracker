require './spec/support/factories'

Company.destroy_all
Job.destroy_all

# COMPANIES = ["ESPN", "Aetna", "United Airlines", "Denver Public Schools", "Shopify", "Starbucks", "Pivotal Labs", "Captain U"]
# JOBS = ["Engineering", "Development", "Dev Ops", "Quality Assurance", "Teacher", "Product Manager", "Consultant", "Community Manager"]
# CITIES = ["Seattle", "Denver", "Portland", "Indianapolis", "Madison", "Orlando", "San Diego", "Austin", "Las Vegas", "Little Rock", "Boise", "Eugene", "Oakland"]

# COMPANIES.each do |name|
#   company = Company.create!(name: name)
#   puts "Created #{company.name}"
#   10.times do |num|
#     company.jobs.create!(title: JOBS.sample, description: "What a great position!", level_of_interest: num + rand(100), city: CITIES.sample)
#     puts "  Created #{company.jobs[num].title}"
#   end
# end


5.times do |num|
  company = FactoryGirl.create(:company_with_jobs_and_contacts)
  category = FactoryGirl.create(:category)
  category.jobs << company.jobs
end