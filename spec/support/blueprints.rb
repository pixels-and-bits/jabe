require 'machinist/active_record'

# takes care of
# Validation failed: Email has already been taken (ActiveRecord::RecordInvalid)
Machinist.configure do |config|
  config.cache_objects = false
end

Admin.blueprint do
  email { 'admin@example.com' }
  password { 'password' }
  password_confirmation { 'password' }
end

Settings.blueprint do
  # Attributes here
end

Entry.blueprint do
  title { Faker::Lorem.words.to_s }
  body { Faker::Lorem.paragraph }
end

Entry.blueprint(:published) do
  draft { false }
end

Comment.blueprint do
  # Attributes here
end
