require 'rspotify/oauth'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, ENV["SPOTIFY_CLIENT"], ENV["SPOTIFY_SECRET"],
  scope: 'user-read-email user-top-read'
end
