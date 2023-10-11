class Link < ApplicationRecord
  validates :url, presence: true, allow_blank: false, format: URI::DEFAULT_PARSER.make_regexp(%w[http https])
  validates :short_url, presence: true
end
