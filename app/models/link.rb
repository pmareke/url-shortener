class Link < ApplicationRecord
  validates :url, presence: true
  validates :short_url, presence: true
end
