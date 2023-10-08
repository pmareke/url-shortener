class URLShortener
  attr_reader :url
  attr_reader :short_url

  def initialize(url)
    @url = url
    @short_url = url
  end
end
