class ShortendUrl < ApplicationRecord
    validates :short_url, presence: true
    validates :long_url, presence: true
    validates :short_url, uniqueness: true
    validates :long_url, uniqueness: true

    belongs_to :user,
    class_name: :User
    primary_key: :id,
    foreign_key: :user_id
 end