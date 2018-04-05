class Auth0Controller < ApplicationController
  def callback
    session[:userinfo] = request.env['omniauth.auth']

    redirect_to signin_path # dashboard is the homepage stuff
  end

  def failure
    @error_msg = request.params['message']
  end
end
