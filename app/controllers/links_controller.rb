class LinksController < ApplicationController

  def new
    @link = Link.new
  end

  def create
    url = url_params[:url]
    short_url = Shortener.short(url)
    @link = Link.new(url: url, short_url: short_url)

    if @link.save
      redirect_to root_path
    else
      render :new, :unprocessable_entity
    end
  end

  private

  def url_params
    params.require(:link).permit(:url)
  end

end
