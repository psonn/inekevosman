class Article < ActiveRecord::Base
	belongs_to :user
	mount_uploader :image, ImageUploader

	extend FriendlyId
    friendly_id :title, use: :slugged

    validates :title, :body, presence: { :message => "Mag niet leeg zijn." }
    validates :title, :body, length:   { minimum: 2, :message => "Moet minimaal 2 tekens zijn." }
end
