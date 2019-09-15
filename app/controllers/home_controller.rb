class HomeController < ApplicationController
  def index
    if client_signed_in?
      redirect_to dashboard_path
    end
  end
end
