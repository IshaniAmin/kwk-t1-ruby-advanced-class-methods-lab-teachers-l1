class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def create
    song = Song.new
    @all << song
    song
  end

  def new_by_name(name)
    song = Song.new
    song.name = name
    song
  end

  def create_by_name(name)
    song = Song.new
    song.name = name
    @@all << song
    song
  end

  def find_by_name(name)
    @@all.each do |song|
      if song.name == name
        return song
      end
    end
    return nil
  end

  def find_or_create_by_name(name)
    if find_by_name(name) != nil
      return find_by_name(name)
    else
      create_by_name(name)
    end
  end

  def alphabetical

  end

  def new_from_filename

  end

  def create_from_filename

  end

  def destroy_all

  end

end
