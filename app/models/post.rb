class Post < ApplicationRecord
    validates :content, presence: true
    validates :image, presence: true
    validates :user_id, presence: true
    belongs_to :user

    acts_as_votable
end
