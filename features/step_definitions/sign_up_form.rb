Given(/^I am on farmdrop's sign\-up page, on a (.*) device$/) do |device|
  sign_up_form.visit
end

When(/^I enter a valid email address and password$/) do
  sign_up_form.enter_email valid_email
  sign_up_form.enter_password valid_password
end

And(/^enter a valid postcode$/) do
  sign_up_form.enter_postcode valid_postcode
end

And(/^click the submit button$/) do
  sign_up_form.click_submit
end

Then(/^my account is successfully created, and I am logged in$/) do
  header.verify_signed_in
end