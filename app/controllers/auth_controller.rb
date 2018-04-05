class AuthController < ApplicationController
  def index
  end

  def logout
    include LogoutHelper

    reset_session
    redirect_to logout_url.to_s
  end
end
