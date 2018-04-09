module ApplicationHelper

	def formated_cname_sunspot(hit,user)
		if hit.primary_key.to_i==user.id
			if hit.highlights(:company_name).present?
				hit.highlights(:company_name).each do |highlight|
					return "  " + highlight.format { |word| "*#{word}*" }
				end
			else
				user.company.name
			end
		end
	end

	def formated_fname_sunspot(hit,user)
		if hit.primary_key.to_i==user.id
			if hit.highlights(:fname).present?
				hit.highlights(:fname).each do |highlight|
					return "  " + highlight.format { |word| "*#{word}*" }
				end
			else
				user.fname
			end
		end
	end

end
