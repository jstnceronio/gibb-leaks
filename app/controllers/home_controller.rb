class HomeController < ApplicationController
    def index
        @topics = Topic.all
        render json: @topics
    end 
end