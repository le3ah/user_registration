require 'rails_helper'

describe  'login form' do
  describe 'as a visitor' do
    it "should login if already a user" do
      user = User.create(name: "Jim", email: "jmm@gmail.com", password: "test")

      visit '/'
      click_on 'I already have an account'

      expect(current_path).to eq(login_path)
      fill_in "username", with: user.name
      fill_in "password", with: user.password

      click_on "Log in"

      expect(current_path).to eq(user_path(user))

      expect(page).to have_content("Welcome, #{user.name}!")
      expect(page).to have_content("Log out")
    end
  end
end
