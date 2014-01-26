class Link < ActiveRecord::Base

	def code_is_unique(rand_str)
		if Link.find_by(:random_string => rand_str) == nil
			return true
		else
			return false
		end
	end

	def unique_url(url)

	end

	def self.search(random_string)
		@link = find_by(:random_string => "#{random_string}")
	end

end
