require 'rails_helper'

RSpec.describe "Links", type: :system do
  before do
    driven_by(:rack_test)
  end

  it 'should be able to create a new link' do
    visit "/"

    fill_in "Link", with: "https://github.com/pmareke/url-shortener"
    click_button "Create short url"

    expect(Link.count).to eq 1
  end
end
