class User < ActiveRecord::Base
	attr_accessor :activation_token, :reset_token

	has_many :publications, dependent: :destroy

	before_save :downcase_name
  before_save :upcase_zone

	validates :name, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false}
	validates :zone, presence: true
 
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
  validate :picture_size

  mount_uploader :picture, PictureUploader

    private

      def downcase_name
      	self.name = name.downcase
      end

      def upcase_zone
        self.zone = zone.upcase
      end

      def picture_size
        if picture.size > 5.megabytes
          errors.add(:picture, "Debe ser menor a 5MB")
        end
      end

end
