class PagesController < ApplicationController
    skip_before_action :verify_authenticity_token
    def show
        if params[:id]
        render json: Movie.find(params[:id])
        else 
        render json: Movie.all()
        end
    end
    def delete
        if params[:id]
            @movie = Movie.find(params[:id])
            @movie.delete
        end
        edirect_to '/show'

    end
    def edit
        if params
end
