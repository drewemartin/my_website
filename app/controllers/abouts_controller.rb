class AboutsController < ApplicationController
  skip_before_filter :require_login

  def index
    render :index
  end
end
