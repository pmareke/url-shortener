require 'rails_helper'

describe Shortener do
  it 'should short and url' do
    url = "https://github.com/pmareke/url-shortener"

    short_url = Shortener.short(url)

    expect(short_url).not_to be("")
  end

  it 'the short url should have 32 characters' do
    url = "https://github.com/pmareke/url-shortener"

    short_url = Shortener.short(url)

    expect(short_url.size).to be(32)
  end

  it 'two urls should have different short urls' do
    url = "https://github.com/pmareke/url-shortener"
    blog_url = "https://pmareke.com/posts"

    url_shortener = Shortener.short(url)
    url_blog = Shortener.short(url)

    expect(url_shortener).not_to eq(blog_url)
  end

  it 'the same url should always generate the same short url' do
    url = "https://github.com/pmareke/url-shortener"
    url_shortener = Shortener.short(url)
    url_shortener_1 = Shortener.short(url)

    expect(url_shortener).to eq(url_shortener_1)
  end

  it 'two urls should have different short urls' do
    url = "https://github.com/pmareke/url-shortener"
    blog_url = "https://pmareke.com/posts"

    url_shortener = Shortener.short(url)
    url_blog = Shortener.short(url)

    expect(url_shortener).not_to eq(blog_url)
  end
end
