# == Schema Information
#
# Table name: links
#
#  id            :integer          not null, primary key
#  url           :string(255)
#  random_string :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

class Link < ActiveRecord::Base

	attr_accessible :url, :random_string

	def self.code_is_unique?(rand_str)
		Link.find_by(:random_string => rand_str).nil?
	end

	def unique_url(url)

	end

	def self.search(random_string)
		@link = find_by(:random_string => "#{random_string}")
	end

end
