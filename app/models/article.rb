class Article < ActiveRecord::Base

	def self.search(search)
	  where("title ILIKE ?", "%#{search}%") 
	end

	validates :title, :presence => { :message => "Title cannot be blank" }

end
