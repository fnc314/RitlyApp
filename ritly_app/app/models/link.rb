class Link < ActiveRecord::Base

	def code_is_unique(rand_str)
		@rand_str=SecureRandom.urlsafe_base64(15)
		i=0
		while i<4
			if Link.find_by(:random_string => @rand_str) != nil
				@rand_str=SecureRandom.urlsafe_base64(15)
				i+=1
			else
				return true
				return @rand_str
			end
		end
		return false
	end

	def unique_url(url)

	end

end
