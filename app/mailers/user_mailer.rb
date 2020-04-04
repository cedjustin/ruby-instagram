class UserMailer < ApplicationMailer
    def user_mail(post)
        @post = post
        mail to: @post.user.email, subject: "Instapost"
    end
end
