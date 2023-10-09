# frozen_string_literal: true

require "rails_helper"

RSpec.describe Users::SearchQuery do
  it "returns users by name" do
    user1 = create(:user, name: "Jane")
    _user2 = create(:user, name: "John")
    _user3 = create(:user, name: "David")

    users = described_class.call(search: "Jane")

    expect(users).to contain_exactly(user1)
  end

  it "returns users by email" do
    _user1 = create(:user, email: "jane@example.com")
    user2 = create(:user, email: "John@example.com")
    _user3 = create(:user, email: "david@example.com")

    users = described_class.call(search: "John@example.com")

    expect(users).to contain_exactly(user2)
  end

  it "returns users by phone" do
    _user1 = create(:user, phone: "+55 (91) 98354-0447")
    _user2 = create(:user, phone: "+55 (61) 99445-1471")
    user3 = create(:user, phone: "+55 (61) 98739-6214")

    users = described_class.call(search: "98739-6214")

    expect(users).to contain_exactly(user3)
  end

  it "returns users by cpf" do
    user1 = create(:user, cpf: "871.416.190-70")
    _user2 = create(:user, cpf: "571.226.840-08")
    _user3 = create(:user, cpf: "102.836.280-30")

    users = described_class.call(search: "871.416.190-70")

    expect(users).to contain_exactly(user1)
  end
end
