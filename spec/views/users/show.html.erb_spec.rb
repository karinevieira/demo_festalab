# frozen_string_literal: true

require "rails_helper"

RSpec.describe "users/show" do
  before do
    assign(:user, create(:user))
  end

  it "renders name attribute in <p>" do
    render
    expect(rendered).to match(/Name/)
  end

  it "renders email attribute in <p>" do
    render
    expect(rendered).to match(/Email/)
  end

  it "renders phone attribute <p>" do
    render
    expect(rendered).to match(/Phone/)
  end

  it "renders cpf attribute in <p>" do
    render
    expect(rendered).to match(/Cpf/)
  end
end
