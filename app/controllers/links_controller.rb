class LinksController < ApplicationController

  def new
    @link = Link.new
  end

  def create
    url = url_params[:url]
    if url.empty?
      @link = Link.new
      render :new
      return
    end

    if short_url = find_short_url_for_link(url)
      redirect_to root_path, notice: "#{root_url}#{short_url}"
      return
    end

    short_url = Shortener.short(url)
    @link = Link.new(url: url, short_url: short_url)
    if @link.save
      Rails.cache.write(url, short_url)
      redirect_to root_path, notice: "#{root_url}#{short_url}"
    else
      render :new, :unprocessable_entity
    end
  end

  private

  def url_params
    params.require(:link).permit(:url)
  end

  def find_short_url_for_link(url)
    return Rails.cache.read(url) || Link.find_by_url(url)&.short_url
  end

end
