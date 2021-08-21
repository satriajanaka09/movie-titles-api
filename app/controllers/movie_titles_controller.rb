class MovieTitlesController < ApplicationController

    def index 
        @movieTitles = MovieTitle.all 
        render json: @movieTitles
    end

    def show
        @movieTitle = MovieTitle.find(params[:id])
        render json: @movieTitle
    end

    def create
        @movieTitle = MovieTitle.create(
            title: params[:title],
            description: params[:description]
        )
        render json: @movieTitle
    end

    def update
        @movieTitle = MovieTitle.find(params[:id])
        @movieTitle.update(
            title: params[:title],
            description: params[:description]
        )
        render json: @movieTitle
    end

    def destroy
        @movieTitles = MovieTitle.all
        @movieTitle = MovieTitle.find(params[:id])
        @movieTitle.destroy
        render json: @movieTitles
    end

end
