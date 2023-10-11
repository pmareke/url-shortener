class Link < ApplicationRecord
  validates :url, presence: true, allow_blank: false
  validates :short_url, presence: true
end
