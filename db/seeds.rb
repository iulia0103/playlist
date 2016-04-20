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
  ["Bohemian Rhapsody", 1975],
  ["We will Rock you", 1982],
  ["We are the Champions", 1977]
]

artist_songs["Scorpions"] = [
  ["Still Loving You", 1984],
  ["Rock you like a Hurricane", 1984],
  ["Dust in the Wind", 1977]
]

artist_songs["Guns N`Roses"] = [
  ["November Rain", 1991],
  ["Knockin` on Heaven`s door", 1973],
  ["Welcome to the Jungle", 1987]
]

artist_songs.each do |artist_name, songs|
  artist = Artist.find_by(name: artist_name)

  songs.each do |title, year|
    Song.create(title: title, year: year, artist_id: artist.id)
  end
end
