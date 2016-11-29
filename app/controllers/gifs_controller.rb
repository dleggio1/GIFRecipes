class GifsController < ApplicationController
    
    def index
        if params[:tag]
            @gifs = Gif.tagged_with(params[:tag])
        elsif params[:search]
            @gifs = Gif.search(params[:search])
        else
            @gifs = Gif.all
        end
    end
    
    def show
        @gif = Gif.find(params[:id])
    end
    
    def new
    end
    
    def create
        @gif = Gif.new(gif_params)
        
        @gif.save
        redirect_to @gif
    end
    
    private
    def gif_params
        params.require(:gif).permit(:title, :link, :recipe, :all_tags)
    end
    
end
