require 'rails_helper'

RSpec.describe "Links", type: :system do
  before do
    driven_by(:selenium)
  end

  before(:each) do
    Rails.cache.clear
  end

  it 'should be able to create a new link' do
    url = "https://github.com/pmareke/url-shortener"
    visit "/"

    find(:css, "#url-input").set url
    click_button "Create short URL"

    expect(page).to have_css("#short_link_url")
  end

  it 'should not create an existing url' do
    url = "https://github.com/pmareke/url-shortener"
    visit "/"

    find(:css, "#url-input").set url
    click_button "Create short URL"

    visit "/"

    find(:css, "#url-input").set url
    click_button "Create short URL"

    expect(Link.count).to eq 1
  end
end
