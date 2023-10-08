# frozen_string_literal: true

require "rails_helper"

RSpec.describe "users/new" do
  before do
    assign(
      :user, User.new(name: "MyString", email: "MyString", phone: "MyString", cpf: "MyString")
    )
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do
      assert_select "input[name=?]", "user[name]"

      assert_select "input[name=?]", "user[email]"

      assert_select "input[name=?]", "user[phone]"

      assert_select "input[name=?]", "user[cpf]"
    end
  end
end
