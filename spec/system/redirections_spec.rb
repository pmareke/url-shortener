require 'rails_helper'

RSpec.describe "Redirections", type: :system do
  before do
    Capybara.default_host = 'http://localhost:3000'
    driven_by(:selenium)
  end

  it 'should redirect to the original url' do
    url = "https://github.com/pmareke/url-shortener"
    visit "/"

    find(:css, "#url-input").set url
    click_button "Create short URL"

    expect(page).to have_selector(:css, '#short_link_url')
  end
end
