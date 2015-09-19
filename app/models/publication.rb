class Publication < ActiveRecord::Base
  belongs_to :user

  default_scope -> { order(created_at: :desc) }
  validates :content, presence: true
  validate :picture_size

  mount_uploader :picture, PictureUploader

  private

      def picture_size
        if picture.size > 5.megabytes
          errors.add(:picture, "Debe ser menor a 5MB")
        end
      end
end
