class Library
  def get_user_playlist
    http = Curl.get("https://api.spotify.com/v1/me/top/playlists?limit=25") do |http|
      http.headers['Accept'] = 'application/json',
      http.headers['Authorization'] = "Bearer #{access_token}"
    end.body_str

    JSON.parse(http)
  end
end
