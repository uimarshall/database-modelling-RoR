class TagsController < ApplicationController
    def index
        @tags = Tag.all
    end
    
    def show
      @tag = Tag.find(params[:id])
    end
    def destroy
        @tags = Tag.find(params[:id])
        @tags.destroy
        flash.notice = "'#{@tags.name}' has been deleted Successfully!"
         
        redirect_to tags_path
        
    end
    
end
