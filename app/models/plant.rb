class Plant < ApplicationRecord
    # Assuming you have the necessary validations and associations
  
    # Returns the plant's name
    def name
      self[:name]
    end
  
    # Returns the plant's image
    def image
      self[:image]
    end
  
    # Returns the plant's price
    def price
      self[:price]
    end
  end
  