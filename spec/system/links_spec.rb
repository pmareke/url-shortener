require 'rails_helper'

RSpec.describe "Links", type: :system do
  before do
    driven_by(:rack_test)
  end

  it 'should be able to create a new link' do
    visit "/"

    fill_in "Link", with: "https://github.com/pmareke/url-shortener"
    click_button "Create short url"

    expect(page).to have_css("#short_link_url")
  end

  it 'should not create an existing url' do
    url = "https://github.com/pmareke/url-shortener"
    visit "/"

    fill_in "Link", with:  url
    click_button "Create short url"

    visit "/"

    fill_in "Link", with:  url
    click_button "Create short url"

    expect(Link.count).to eq 1
  end
end
