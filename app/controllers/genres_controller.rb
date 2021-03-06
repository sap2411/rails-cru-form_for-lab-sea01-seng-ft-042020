class GenresController < ApplicationController
    before_action :set_genre, only: [:show, :edit, :update]
    def index
        @genres = Genre.all
    end

    def show
    end

    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.create(params.require(:genre).permit(:name))
        redirect_to @genre
    end

    def edit
    end

    def update
        @genre = Genre.update(params.require(:genre).permit(:name))
        redirect_to @genre
    end

    private

    def set_genre
        @genre = Genre.find(params[:id])
    end
end
