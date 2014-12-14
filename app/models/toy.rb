class Toy < ActiveRecord::Base
    belongs_to :user
    validates :name, presence:true, length: { minimum: 2 }
    validates :manufacturer, presence: true
    validates :category, presence: true
    
    #Used for image upload | thoughtbot/paperclip gem. 
    has_attached_file :image, styles: {
        thumb: '100x100>',
        square: '200x200#',
        medium: '300x300>'
    }
    
    #image upload validations.
    validates_attachment :image, :less_than => 5.megabytes, presence: true, 
    content_type: { :content_type => ["image/jpg", "image/jpeg", "image/gif", "image/png"] }
end
