class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy,]
    def index
        @movies = Movie.all
    end
    def new
        @movie=Movie.new
    end
    def create 
        @movie=Movie.new(movie_params)
        @movie.published_datetime=DateTime.now
       if @movie.save
           redirect_to root_path
       else
           render :new
        end
        
    end
    def show
        
    end
    def edit
     
    end
    def update
      
      if @movie.update(movie_params)
        redirect_to root_path
      else
        render :edit
      end
      
    end
    def destroy
         
         @movie.destroy
         redirect_to root_path
      end
    private
    def set_movie
      @movie = Movie.find(params[:id])
    end
    def movie_params
        params.require(:movie).permit(:name, :description,:avatar)
    end
        
    
end
