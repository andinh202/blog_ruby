class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  
  def new 
    @article = Article.new
  end
  def show
    @article = Article.find(params[:id])
  end
  
  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:success]= "Article created"
      redirect_to articles_path
    else
      flash[:danger] = "Article has not been created"
      render :new
    end
  end
  
  
  
  private
    def article_params
      params.require(:article).permit(:title, :body)
    end
    
end
