# frozen_string_literal: true

require "rails_helper"

RSpec.describe User do
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

    context "when the user's phone is valid" do
      it "doesn't add an error to phone" do
        user = build_stubbed(:user, phone: "+5591967558042")
        user.valid?

        expect(user.errors[:phone]).to be_empty
      end
    end

    context "when the user's phone is invalid" do
      it "adds an error message to phone" do
        user = build_stubbed(:user, phone: "123456789")
        user.valid?

        expect(user.errors[:phone]).to include("is invalid")
      end
    end

    context "when the user's CPF is valid" do
      it "doesn't add an error to cpf" do
        user = build_stubbed(:user, cpf: CPF.generate(true))
        user.valid?

        expect(user.errors[:cpf]).to be_empty
      end
    end

    context "when the user's CPF is invalid" do
      it "adds an error message to cpf" do
        user = build_stubbed(:user, cpf: "invalid_value")
        user.valid?

        expect(user.errors[:cpf]).to include("is invalid")
      end
    end
  end
end
