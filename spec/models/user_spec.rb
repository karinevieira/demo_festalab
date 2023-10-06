require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:cpf) }

    it do
      user = create(:user)
      expect(user).to validate_uniqueness_of(:email)
    end

    it do
      user = create(:user)
      expect(user).to validate_uniqueness_of(:cpf).case_insensitive
    end

    it { is_expected.to allow_value("user@example.com").for(:email) }
    it { is_expected.not_to allow_value("invalid_email@.com").for(:email) }
    it { is_expected.not_to allow_value("invalid_email@-example.com").for(:email) }
  end
end
