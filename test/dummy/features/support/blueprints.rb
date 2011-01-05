require 'email_spec'
require 'email_spec/cucumber'
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
  site_name { 'JABE' }
  site_url { 'http://example.com' }
  mail_from { 'jabe@example.com' }
end

Entry.blueprint do
  title { 'My awesome blog entry' }
  body { 'This is the body of my awesome blog entry' }
  published_at { Time.now }
  draft { false }
end

Entry.blueprint(:published) do
  draft { false }
end

Comment.blueprint do
  # Attributes here
end

Settings.make!