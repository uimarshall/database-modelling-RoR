# @articles? That marks this variable as an "instance level variable". 
# We want the list of articles to be accessible from both the controller and the view 
# that we’re about to create. In order for it to be visible in both places it has to be an instance variable. If we had just named it articles, 
# that local variable would only be available within the index method of the controller.

# Rails has assumed that our "index action" in the controller should
# have a corresponding "index.erb" view template in the views folder. 
class ArticlesController < ApplicationController
    include ArticlesHelper
    def index
        @articles = Article.all
    end

    def show
        @article = Article.find(params[:id])
        @comment = Comment.new
        @comment.article_id = @article.id
    end

    def new
        @article = Article.new #Enables us create new article via a form, without it the form won't open when you click "Create New"

    end
        
#    We accessed the "new action" to load the form, but Rails’ interpretation of REST uses a 
#    second action named "create" to process the data from that form. 

    def create
       # Without "create action", you can submit the form
    #    @article = Article.new( The @article so created is an array of objects(hash)
    #     title: params[:article][:title], - @article array contains both 'title & body',article.title
    #     body: params[:article][:body]) - article.body
        @article = Article.new(article_params)
        @article.save
         flash.notice = "Article '#{@article.title}' Created!"
        redirect_to article_path(@article)
    end

    def edit
       @article = Article.find(params[:id])
    end

    def update
        @article = Article.find(params[:id])
        @article.update(article_params)
        flash.notice = "Article '#{@article.title}' Updated!"
        redirect_to article_path(@article)
    end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy
        flash.notice = "Article '#{@article.title}' has been deleted Successfully!"
         
        redirect_to articles_path
        
    end
end
