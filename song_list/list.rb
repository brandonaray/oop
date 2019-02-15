class List

  def initialize(songs)
    @songs = [ ]
  end

  def songs
    return @songs
  end

  def add_song(song)
    @songs << song
  end

  def play
    index = 0
    @songs.length times do
      `say #{@songs[index].lyrics}`
      index = index + 1
    end
  end

  def shuffle
    index = 0
    shuffled = @songs.sort_by { rand }
    shuffled.length times do
      `say #{shuffled[index].lyrics}`
      index = index + 1
    end
  end

  def duration
    seconds = 0
    index = 0
    @songs.length times do
      seconds = seconds + @songs[index].duration
      index = index + 1
    end
    return "Total playlist duration: #{seconds}."
  end

end
