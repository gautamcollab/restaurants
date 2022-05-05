class Customer < ActiveRecord::Base
    has_many :reviews 
    has_many :restaurants, through: :reviews 

    def full_name 
        self.first_name+self.last_name 
    end

    def favorite_restaurant
        self.reviews.order("star_rating DESC").limit(1)
    end 

    def add_review(restaurant, rating) 
        Review.create(star_rating: rating, restaurant: restaurant, customer_id: self.id) 
    end 

    def delete_reviews(restaurant) 
        self.reviews.destroy_all 
    end 
    
end