class Restaurant < ActiveRecord::Base
    has_many :reviews 
    has_many :customers, through: :reviews 

    def Restaurant.fanciest 
        Restaurant.all.order("price DESC").limit(1) 
    end 

#    def all_reviews 

#     "Review for #{self.name} by #{customer.first_name} #{customer.last_name}: #{review.star_rating}"
#    do |r| 
#     end 
#    end 
    
end