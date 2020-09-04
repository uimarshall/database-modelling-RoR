# @articles? That marks this variable as an "instance level variable". 
# We want the list of articles to be accessible from both the controller and the view 
# that we’re about to create. In order for it to be visible in both places it has to be an instance variable. If we had just named it articles, 
# that local variable would only be available within the index method of the controller.

# Rails has assumed that our "index action" in the controller should
# have a corresponding "index.erb" view template in the views folder. 
class ArticlesController < ApplicationController
    def index
        @articles = Article.all
    end

    def show
        @article = Article.find(params[:id])
    end
end
