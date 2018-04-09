class User < ApplicationRecord
	belongs_to :company
	searchable do
		text :fname, :stored => true
		text :lname
		text :email
		text :username
		text :desc
		text :company_name, :stored => true do
			company.name
		end
		time :created_at
	end
end
