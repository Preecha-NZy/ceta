class PagesController < ApplicationController
    def index   
        supplier = Supplier.last
        @cars = supplier.cars
    end
end
