class Pardon < ActiveRecord::Base

    default_scope -> { order(created_at: :desc) }
	validates :content, presence: true, length: { maximum: 144 }
	validates :kind, presence: true
end
