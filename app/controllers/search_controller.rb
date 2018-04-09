class SearchController < ApplicationController
	def search
		# @search = sunspot_search(params)
		@search = User.search do
		  keywords params[:query] do
		    highlight :company_name, :fname
		  end
		end
	end

	protected
		def sunspot_search(options)
			Sunspot.search(User) do
			 keywords options[:query]
			 # with(:published, true)
			 # order_by :updated_at, :desc
			 # paginate :page => options[:page]
			end
		end
end