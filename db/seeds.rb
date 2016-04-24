iulia = User.create( email: 'iulia.leancu@gmail.com', password: 'iulia0103' )
vlad = User.create( email: 'vlad.mihai@gmail.com', password: 'vlad8523' )

artists = [
  ["Queen", "England", "queen.jpg", "logo_queen.jpg"],
  ["Scorpions", "Germany", "scorpions.jpg", "logo_scorpions.jpg"],
  ["Guns N`Roses", "America", "guns.jpg", "logo_guns.jpg"]
]

artists.each do |name, country, image, logo|
  Artist.create(name: name, country: country, image: image, logo: logo)
end


artist_songs = {}

artist_songs["Queen"] = [
  ["Bohemian Rhapsody", 1975, "https://www.youtube.com/watch?v=fJ9rUzIMcZQ", 1],
  ["We will Rock you", 1982, "https://www.youtube.com/watch?v=-tJYN-eG1zk", 1],
  ["We are the Champions", 1977, "https://www.youtube.com/watch?v=04854XqcfCY", 1]
]

artist_songs["Scorpions"] = [
  ["Still Loving You", 1984, "https://www.youtube.com/watch?v=7pOr3dBFAeY", 1],
  ["Rock you like a Hurricane", 1984, "https://www.youtube.com/watch?v=6yP1tcy9a10", 1],
  ["Wind of Change", 1990, "https://www.youtube.com/watch?v=n4RjJKxsamQ", 1]
]

artist_songs["Guns N`Roses"] = [
  ["November Rain", 1991, "https://www.youtube.com/watch?v=8SbUC-UaAxE", 1],
  ["Knockin` on Heaven`s door", 1973, "https://www.youtube.com/watch?v=2tmc8rJgxUI", 1],
  ["Welcome to the Jungle", 1987, "https://www.youtube.com/watch?v=o1tj2zJ2Wvg", 1]
]

artist_songs.each do |artist_name, songs|
  artist = Artist.find_by(name: artist_name)

  songs.each do |title, year, video, user_id|
    Song.create(title: title, year: year, video: video, artist_id: artist.id, user_id: user_id)
  end
end
