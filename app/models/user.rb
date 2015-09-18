class User < ActiveRecord::Base
	attr_accessor :activation_token, :reset_token

	has_many :publications, dependent: :destroy

	before_save :downcase_name

	validates :name, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false}
	validates :zone, presence: true
 
    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }, allow_nil: true


    private

      def downcase_name
      	self.name = name.downcase
      end

end
