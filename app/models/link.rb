class Link < ApplicationRecord
  validates :url, presence: true, allow_blank: false, format: URI::DEFAULT_PARSER.make_regexp(%w[http https])
  validates :short_url, presence: true

  def self.create_link(url)
    if link = find_short_link_for_url(url)
      return link
    end

    short_url = Shortener.short(url)
    Link.new(url: url, short_url: short_url)
  end

  private

  def self.find_short_link_for_url(url)
    return Rails.cache.read(url) || Link.find_by_url(url)
  end

end
