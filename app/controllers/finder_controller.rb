class FinderController < ApplicationController
    def index
        @customers = Customer.all
    end
    
    def missing_email
        @customers = Customer.where email: nil || ''
    end
    
    def alphabetized
       @customers = Customer.order("name")
    end
end
