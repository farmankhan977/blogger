class ArticlesController < ApplicationController
	include ArticlesHelper
	def index
  		@articles = Article.all
	end

	def show
		@article = Article.find(params[:id])
	end

	def new
		@article = Article.new
	end

	def create
	  @article = Article.new(params[:id])
	  @article.save
	  redirect_to article_path(@article)
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy
		redirect_to article_path(@article)

	end

	def edit
 		 @article = Article.find(params[:id])
	end

	private

	    def article_params
	      	params.require(:article).permit(:title, :text)
	    end

end
