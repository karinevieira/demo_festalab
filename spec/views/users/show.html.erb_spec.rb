# frozen_string_literal: true

require "rails_helper"

RSpec.describe "users/show" do
  before do
    assign(:user, create(:user, name: "Jane Doe"))
  end

  it "renders name attribute in <p>" do
    render
    expect(rendered).to include("Jane Doe")
  end

  it "renders email attribute in <p>" do
    render
    expect(rendered).to match(/Email address/)
  end

  it "renders phone attribute <p>" do
    render
    expect(rendered).to match(/Phone/)
  end

  it "renders cpf attribute in <p>" do
    render
    expect(rendered).to match(/CPF/)
  end
end
