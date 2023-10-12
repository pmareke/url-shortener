class LinksController < ApplicationController

  def new
    @link = Link.new
  end

  def create
    @link = Link.create_link(url)
    if @link.save
      Rails.cache.write(url, @link)
      redirect_to root_path, notice: "#{root_url}#{@link.short_url}"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def url_params
    params.require(:link).permit(:url)
  end

  def url
    url_params[:url]
  end
end
