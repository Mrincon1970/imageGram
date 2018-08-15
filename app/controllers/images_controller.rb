class ImagesController < ApplicationController

    before_action :set_image, only: [:show, :edit, :update, :destroy]

    def index
        @images = Image.all #variable de tipo array @images
    end 

    def show 
       
    end 

    def new
        @image = Image.new
    end

    def edit 
       
    end    

    def create
        #render plain: params[:image].inspect
        @image = Image.new images_params
        @image.save

        #redirect_to @image #redirecciona a una nueva vista
    end

    def update
        @image.update images_params 
        redirect_to @image
    end 

    def destroy
        @image.destroy
        redirect_to images_path 
    end

    private

# Never trust parameters from the scary internet, only allow the white list through.
    def images_params
        params.require(:image).permit :description, :picture
    end

    def set_image
        @image = Image.find params[:id]
    end 
end


