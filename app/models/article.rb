class Article < ActiveRecord::Base
	belongs_to :user
	belongs_to :category

	def self.search(query)
		where('title ilike :pat or content ilike :pat', :pat => "%#{query}%")		
	end
end
