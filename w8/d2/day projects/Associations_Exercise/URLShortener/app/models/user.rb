class User < ApplicationRecord
    validates :email, presence: true
    validates :email, uniqueness: true

    has_many :shortend_urls,
    class_name: :ShortendUrl,
    primary_key: :id,
    foreign_key: :user_id
end