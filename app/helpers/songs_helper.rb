module SongsHelper

  def embed(video)
    youtube_video = video.split("=").last
    content_tag(:iframe, nil, src: "//www.youtube.com/embed/#{youtube_video}")
  end

end
