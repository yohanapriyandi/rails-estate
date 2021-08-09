class Property < ApplicationRecord
    belongs_to :account

    mount_uploader :photo, PhotoUploader

    scope :latest, -> { order created_at: :desc }
end
