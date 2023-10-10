require 'rails_helper'

RSpec.describe "Redirections", type: :system do
  before do
    Capybara.default_host = 'http://localhost:3000'
    driven_by(:rack_test)
  end

  it 'should redirect to the original url' do
    url = "https://github.com/pmareke/url-shortener"
    visit "/"

    find(:css, "#url-input").set url
    click_button "Short url"

    expect(page).to have_selector(:css, '#short_link_url')
  end
end
