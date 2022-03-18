class PagesController < ApplicationController
    def index   
        @car = Car.first
    end
end
