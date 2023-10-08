require 'rails_helper'

describe URLShortener do
  it 'should short and url' do
    url = "https://github.com/pmareke/url-shortener"
    url_shortener = URLShortener.new(url)

    short_url = url_shortener.short_url

    expect(short_url).not_to be("")
  end
end
