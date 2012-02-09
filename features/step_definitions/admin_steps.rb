Given /^a logged in admin$/ do
  @admin = Jabe::Admin.create!(
    :email => 'admin@example.com',
    :password => 'password',
    :password_confirmation => 'password'
  )

  visit '/jabe/admin'
  fill_in 'admin_email', :with => 'admin@example.com'
  fill_in 'admin_password', :with => 'password'
  click_button 'Sign in'
end

When /^I go to the admin settings page$/ do
  visit '/jabe/admin/settings/edit'
end
