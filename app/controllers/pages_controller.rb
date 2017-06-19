class PagesController < ApplicationController
  protect_from_forgery except: :download

  def index
  end

  def download
    begin
      mechanize = Mechanize.new
      page = mechanize.get("http://www.youtubeinmp3.com/download/?video=#{params[:music]}")
      link = page.at('.download-buttons a/@href').value
      download_url = 'http://www.youtubeinmp3.com' + link + '&progressType=button'
      redirect_to download_url
    rescue Exception
      flash[:error] = 'Check your link'
      redirect_to root_path
    end
  end
end
