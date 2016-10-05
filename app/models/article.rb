class Article < ActiveRecord::Base

	def self.search(search)
	  where("title ILIKE ?", "%#{search}%") 
	end

	has_many :comments
	validates :title, :presence => { :message => "Title cannot be blank" }, length: {minimum: 5}
	validates :body, :presence => { :message => "Body cannot be blank" }

end
