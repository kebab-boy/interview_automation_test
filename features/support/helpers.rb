require 'faker'

def valid_email
  email = Faker::Hipster.word + Faker::Pokemon.name + '@aol.com'
  email.gsub!(/\s+/, '')
  puts "email = #{email}"
  email
end

def valid_password
  password = 'Password123'
  puts "password = #{password}"
  password
end

def valid_postcode
  postcode = 'SE16 3EG'
  puts "postcode = #{postcode}"
  postcode
end