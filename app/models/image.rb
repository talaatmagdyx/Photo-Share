class Image < ApplicationRecord
  belongs_to :user
  mount_uploader :picture, PictureUploader

  validate :picture_size

  def picture_size
    if picture.size > 5.megabyte
      errors.add(:picture, 'should be less than 5MB ')
    end
  end

end
