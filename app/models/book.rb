class Book < ApplicationRecord
  has_many :taggings
  has_many :tags, through: :taggings
  has_many :check_items
  has_one_attached :photo

  def thumbnail
    photo.variant(resize: '300x300')
  end

  # (1)photoに対するバリデーションを適用
  validate :validate_photo

  # (2)photoに対するファイルサイズの制限と、ファイルの種類の制限
  def validate_photo
    return unless photo.attached?
    if photo.blob.byte_size > 2.megabytes
      errors.add(:photo, 'File too large.')
    elsif !allowed_image_type?
      errors.add(:photo, 'File type not allowed.')
    end
  end

  private

  # (3)ここではJPEG形式の画像のみを受け入れ可能とします
  def allowed_image_type?
    %w[image/jpg image/jpeg].include?(photo.blob.content_type)
  end
end
