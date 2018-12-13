require 'rails_helper'

describe 'create accounts' do
  describe 'as a visitor' do
    it "should click link to sign up to be a user" do
      user_name = "funbucket13"

      visit '/'



    end

    it "should create new account" do
      user_name = "Kathy"
      user_email = "Kathy@gmail.com"
      user_password = "3family3"

      visit '/'

      click_on 'Sign up to be a user'
      expect(current_path).to eq(new_user_path)

      fill_in :user_name, with: user_name
      fill_in :user_email, with: user_email
      fill_in :user_password, with: user_password

      click_on 'Create User'
      # expect(current_path).to eq("/users/#{User.last.id}")
      expect(page).to have_content("Welcome, #{user_name}!")
      # expect(page).to have_content(user_email)
    end
  end
end
