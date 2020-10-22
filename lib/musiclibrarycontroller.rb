class MusicLibraryController
  attr_reader :path
  def initialize(path = './db/mp3s')
    @path = path
    imptr = MusicImporter.new(@path).import
  end

  def call

    puts "Welcome to your music library!"
    puts "To list all of your songs, enter 'list songs'."
    puts "To list all of the artists in your library, enter 'list artists'."
    puts "To list all of the genres in your library, enter 'list genres'."
    puts "To list all of the songs by a particular artist, enter 'list artist'."
    puts "To list all of the songs of a particular genre, enter 'list genre'."
    puts "To play a song, enter 'play song'."
    puts "To quit, type 'exit'."
    puts "What would you like to do?"

    while (input = gets.chomp) != "exit"
      case input
        when "list songs"
          self.list_songs
        when "list artists"
          self.list_artists
        when "list genres"
          self.list_genres
        when "list artist"
          self.list_songs_by_artist
        when "list genre"
          self.list_songs_by_genre
        when "play song"
          self.play_song
      end
    end
  end

  def list_songs
    orgnized = Song.all.sort_by {|sng| sng.name}
    orgnized.each_with_index do |song,index|
      puts ((index + 1).to_s + ". " + song.artist.name + " - " + song.name + " - " + song.genre.name)
    end
  end

  def list_artists

  end

  def list_genres

  end

  def list_songs_by_artist

  end

  def list_songs_by_genre

  end

  def play_song

  end

end
