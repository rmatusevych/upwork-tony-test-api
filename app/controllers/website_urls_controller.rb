class WebsiteUrlsController < ApplicationController
  def index
    website_urls = WebsiteUrl.all

    render json: website_urls
  end

  def create
    website_url = WebsiteUrl.create(url: params[:url])
    
    if website_url.valid?
      render json: website_url
    else
      render json: website_url.errors.objects.first.full_message
    end
  end
end
