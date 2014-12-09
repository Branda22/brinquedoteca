class User < ActiveRecord::Base
    before_save { self.email = email.downcase }
    after_save :user_notification
    
    has_many :toys
    validates :name, presence: true, length: { minimum: 3 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, uniqueness: { case_sensitive: false }, 
                                      format: { with: VALID_EMAIL_REGEX },
                                      length: { maximum: 255 }
    has_secure_password
    validates :password, length: { minimum: 6 }
    
    private
    
        def user_notification
            BrinquedoMailer.greeting(self).deliver
        end
end
