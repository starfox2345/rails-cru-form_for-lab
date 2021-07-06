class GenresController < ApplicationController
    def index
      @genres = Genre.all
    end
  
    def show
      @genre = Genre.find(params[:id])
    end
  
    def new
      @genre = Genre.new
    end
  
    def create
      @genre = Genre.new(genre_params(:name))
      if @genre.save
        redirect_to genre_path(@genre)
      else
        render :new
      end
    end
  
    def edit
      @genre = Genre.find(params[:id])
    end
  
    def update
      @genre = Genre.find_by_id(params[:id])
      @genre.update(genre_params(:name))
      redirect_to genre_path(@genre)
    end
  
    def destroy
      @genre = Genre.find_by_id(params[:id])
      @genre.destroy
      redirect_to genre_path
    end
  
    private
  
    def genre_params(*args)
      params.require(:genre).permit(*args)
    end
  end