class FinderController < ApplicationController
    def index
        @customers = Customer.all
        #onecustomer = Customer.find_by(params[:id]).province_id
        #@province = Province.where(onecustomer = 'id').first
        @province = Province.select(params[:id]).where('Province.id = Customer.province_id')
    end
    
    def missing_email
       @customers = Customer.where email: nil || ''
    end
    
    def alphabetized
       @customers = Customer.order("name")
    end
end
