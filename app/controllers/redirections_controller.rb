class RedirectionsController < ApplicationController
  def index
    redirect_to link.url, allow_other_host: true
  end

  private

  def link
    short_url = params[:short_url]
    Rails.cache.read(short_url) || Link.find_by_short_url(short_url)
  end
end
