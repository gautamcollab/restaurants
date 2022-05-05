class Restaurant < ActiveRecord::Base
    has_many :reviews 
    has_many :customers, through: :reviews 

    def Restaurant.fanciest 
        Restaurant.all.order("price DESC").limit(1) 
    end 

#    def all_reviews 
#     do |r| 
#         "Review for #{self.name} by " 
    binding.pry 
#    end 
    
end