class User < ApplicationRecord
    validates :username, presence:true, uniqueness:true,length:{maximum: 30}
    validates :email, presence:true, uniqueness:true,length:{maximum: 30}
    before_validation {email.downcase!}
    has_secure_password
    validates :password, :password_confirmation, presence:true, length: {minimum: 6}
    has_many :posts

    has_attached_file :image, styles: { large: "600x300>", medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

    acts_as_voter
end
