require 'rails_helper'

RSpec.describe Link, type: :model do
  it 'should have an URL' do
    link = Link.new()

    expect(link.valid?).to be(false)
  end

  it 'should have an URL' do
    url = "https://github.com/pmareke/url-shortener"

    link = Link.new(url: url)

    expect(link.valid?).to be(false)
  end

  it 'should have an URL format' do
    url = "pmareke/url-shortener"
    short_url = Shortener.short url

    link = Link.new(url: url, short_url: short_url)

    expect(link.valid?).to be(false)
  end
end
