require 'rails_helper'

describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of (:name)}
    it { should validate_presence_of (:email)}
    it { should validate_presence_of (:password)}
  end

  describe 'Class Method' do
    it ".authenticate" do
      user_1 = User.create(name: "Emily", email: "eem@gmail.com", password: "soccer")

      expect(User.authenticate("eem@gmail.com", "soccer")).to eq(user_1)
    end
    it ".authenticate sad path" do
      User.create(name: "Emily", email: "eem@gmail.com", password: "soccer")

      expect(User.authenticate("eem@gmail.com", "family")).to eq(nil)
      expect(User.authenticate("bmmil@gmail.com", "soccer")).to eq(nil)

      expect(User.authenticate("bmmil@gmail.com", "family")).to eq(nil)
    end
  end
end
