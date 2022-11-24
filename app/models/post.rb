class Post < ApplicationRecord
    validates :title, presence: true
    validate :title_is_clickbait
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: %w(Fiction Non-Fiction)}


    def title_is_clickbait
        if title == "True Facts"
            errors.add(:title, "Can't be clickbait")
        end
    end
end
