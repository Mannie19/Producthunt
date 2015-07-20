class Post < ActiveRecord::Base
	
	validates_format_of :url, with: URI::regexp(%w(http https))
  	validates_presence_of :title, :description, :user_id, :category, :url


	belongs_to :user
	has_many :comments
	has_many :votes

	def day
		created_at.to_date
	end

end
