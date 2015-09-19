class Pardon < ActiveRecord::Base

	validates :content, presence: true, length: { maximum: 144 }
	validates :kind, presence: true
end
