class LinksController < ApplicationController

  def new
    @link = Link.new
  end

  def create
    url = url_params[:url]
    link = Link.find_by_url(url)
    if link
      redirect_to root_path, notice: "#{root_url}#{link.short_url}"
    else
      short_url = Shortener.short(url)
      @link = Link.new(url: url, short_url: short_url)
      if @link.save
        redirect_to root_path, notice: "#{root_url}#{@link.short_url}"
      else
        render :new, :unprocessable_entity
      end
    end
  end

  private

  def url_params
    params.require(:link).permit(:url)
  end

end
