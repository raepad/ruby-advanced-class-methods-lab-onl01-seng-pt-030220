require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song = self.new
    song.save
    song
  end
  
  def self.new_by_name(name)
    song = self.new 
    song.name = name 
    song
  end
  
  def self.create_by_name(name)
    song = self.create
    song.name = name
    song
  end

  def self.find_by_name(name)
    find = self.all.find {|song| song.name == name}
  end

  def self.find_or_create_by_name(name)
    if self.find_by_name(name)
      self.find_by_name(name)
    else
      self.create_by_name(name)
    end
  end
    
    # song = self.find_by_name(name)
    # other_song = self.create_by_name(name)
    # if song
    #   song 
    # else
    #   other_song
    # end

  
  #returns all the songs in ascending (a-z) alphabetical order. Use Array#sort_by
  def self.alphabetical
    self.all.sort_by{|a| a.name}
  end
  #you will need those lines, but you should be splitting up the file name first, saving it as an array, and then setting those variables to different indices of the array
  #accepts a filename in the format of "-.mp3"
  #returns name and artist_name
  # def self.new_from_filename(file) 
  #   file = self.new
  #   file.split("-").pop(".mp3").join(" - ")
  #   file.save
  #   file.name = name[0]
  #   file.artist_name = artist_name[1]
  #   file
  # end
  
  def self.create_from_filename
    #self.sort_by {|x| x}
  end
  
  def self.destroy_all
    self.all.clear
  end

end
