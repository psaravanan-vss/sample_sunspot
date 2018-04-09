class Company < ApplicationRecord
	has_many :users
	
	searchable do
		text :name
	end

	def self.names
		all.map{ |c| [c.name, c.id] }
	end

end
