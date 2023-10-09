# frozen_string_literal: true

require "rails_helper"

RSpec.describe "users/index" do
  it "renders a list of users" do
    user = create(:user)
    assign(:users, [user])

    render

    expect(rendered).to include(user.name)
      .and include(user.email)
      .and include(user.phone)
      .and include(user.cpf)
  end
end
