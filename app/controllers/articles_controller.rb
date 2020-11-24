class ArticlesController < ApplicationController
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
    Article.create!(params.require(:article).permit(:title, :content))
    redirect_to "/articles"
  end

  def update
    @article = Article.find(params[:id])
    @article.update(params.require(:article).permit(:title, :content))
    redirect_to article_path(@task.id)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to "/articles"
  end

  def edit
    @article = Article.find(params[:id])
  end
end
