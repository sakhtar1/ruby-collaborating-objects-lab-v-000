class Artist

	attr_accessor :name, :songs
	@@all = []

	def initialize(name)
		@name = name
		@songs = []
	end

	def save
		@@all << self
	end

	def songs
		@songs
	end

	def add_song(song)
		@songs << song
	end

  def self.find_or_create_by_name(name)
   if self.find(name)
      self.create(name)
   else
     self.find(name)
   end 
 end

 def self.find(name)
   self.all.find {|artist| artist.name == name }
 end


 def self.create(name)
   self.new(name).tap {|artist| artist.save}
 end

	def self.all
		@@all
	end

	def print_songs
		songs.each do |song|
			puts song.name
		end
	end

end
