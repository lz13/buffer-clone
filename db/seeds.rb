# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Default user
default_user = Rails.application.credentials.render[:default_user]
password = Rails.application.credentials.render[:default_pass]
confirm_password = Rails.application.credentials.render[:default_confirm_pass]

user = User.where(email: default_user).first_or_initialize
user.update!(
  password: password,
  password_confirmation: confirm_password
)
