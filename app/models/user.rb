class User < ApplicationRecord
    has_many :playlists, dependent: :destroy
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
end
