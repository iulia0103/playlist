artists = [
  ["Queen", "England", "queen.jpg"],
  ["Scorpions", "Germany", "scorpions.jpg"],
  ["Guns N`Roses", "America", "guns.jpg"]
]

artists.each do |name, country, image|
  Artist.create(name: name, country: country, image: image)
end


artist_songs = {}

artist_songs["Queen"] = [
  ["Bohemian Rhapsody", 1975, "https://www.youtube.com/watch?v=fJ9rUzIMcZQ"],
  ["We will Rock you", 1982, "https://www.youtube.com/watch?v=-tJYN-eG1zk"],
  ["We are the Champions", 1977, "https://www.youtube.com/watch?v=04854XqcfCY"]
]

artist_songs["Scorpions"] = [
  ["Still Loving You", 1984, "https://www.youtube.com/watch?v=7pOr3dBFAeY"],
  ["Rock you like a Hurricane", 1984, "https://www.youtube.com/watch?v=6yP1tcy9a10"],
  ["Dust in the Wind", 1977, "https://www.youtube.com/watch?v=wO29FkM6LZM"]
]

artist_songs["Guns N`Roses"] = [
  ["November Rain", 1991, "https://www.youtube.com/watch?v=8SbUC-UaAxE"],
  ["Knockin` on Heaven`s door", 1973, "https://www.youtube.com/watch?v=2tmc8rJgxUI"],
  ["Welcome to the Jungle", 1987, "https://www.youtube.com/watch?v=o1tj2zJ2Wvg"]
]

artist_songs.each do |artist_name, songs|
  artist = Artist.find_by(name: artist_name)

  songs.each do |title, year, video|
    Song.create(title: title, year: year, video: video, artist_id: artist.id)
  end
end
