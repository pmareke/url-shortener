class RedirectionsController < ApplicationController
  def index
    redirect_to url, allow_other_host: true
  end

  private

  def url
    short_url = params[:short_url]
    Link.find_by_short_url(short_url).url
  end
end
