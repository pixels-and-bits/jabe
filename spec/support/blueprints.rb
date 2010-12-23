require 'machinist/active_record'

# Add your blueprints here.
#
# e.g.
#   Post.blueprint do
#     title { "Post #{sn}" }
#     body  { "Lorem ipsum..." }
#   end

Admin.blueprint do
  email { 'admin@example.com' }
  password { 'password' }
  password_confirmation { 'password' }
end

Settings.blueprint do
  # Attributes here
end
