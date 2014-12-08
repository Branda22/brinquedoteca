class Toy < ActiveRecord::Base
    belongs_to :user
    validates :name, presence:true, length: { minimum: 2 }
    validates :manufacturer, presence: true
    validates :category, presence: true
end
