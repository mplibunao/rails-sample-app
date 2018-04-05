Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :auth0,
    'P6Y0TLzrnqC1pta2J5L1Ok7zf4FkPcTB',
    'ShplFvxLpUROSetstJR7otBm0sz-9cEu6IRH91zD1ggSuzd5PaeIEZAchQS_HP0W',
    'mplibunao.auth0.com',
    callback_path: "/auth/oauth2/callback",
    authorize_params: {
      scope: 'openid profile',
      audience: 'https://mplibunao.auth0.com/userinfo'
    }
  )
end
