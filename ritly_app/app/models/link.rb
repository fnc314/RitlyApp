class Link < ActiveRecord::Base

	def self.code_is_unique?(rand_str)
		Link.find_by(:random_string => rand_str).nil?
	end

	def unique_url(url)

	end

	def self.search(random_string)
		@link = find_by(:random_string => "#{random_string}")
	end

end
