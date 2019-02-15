class Song

  def initialize(title, artist, duration, lyrics)
    @title = title
    @artist = artist
    @duration = durations
    @lyrics = lyrics
  end

  def title
    return @title
  end

  def artist
    return @artist
  end

  def duration
    return @duration
  end

  def lyrics
    return @lyrics
  end

  def play
    `say #{@lyrics}`
  end

  def friendly_duration
    return "#{@duration / 60} minutes and #{@duration % 60} seconds" 
  end

end
