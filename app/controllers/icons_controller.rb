class IconsController < ApplicationController

  def index
    icons = HTTP.auth(Rails.application.credentials.icons_api_key).get("https://api.iconfinder.com/v4/iconsets?count=10").parse(:json)
    render json: icons
  end
end
