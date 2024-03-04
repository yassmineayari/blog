class Api::V1::ArticlesController < ApiController

    before_action:http_authenticate
    
    skip_before_action :verify_authenticity_token

    before_action :set_article, only: [:show, :update, :destroy]

    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found



  
    def index
      articles = Article.all
      render json: articles
    end
  
    def show
      render json: @article
    end
  
    def create
      article = Article.new(article_params)
      if article.save
        render json: article, status: :created
      else
        render json: article.errors, status: :unprocessable_entity
      end
    end
  
    def update
      if @article.update(article_params)
        render json: @article
      else
        render json: @article.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      @article.destroy
      head :no_content
    end
  

    private
    
    def set_article
      @article = Article.find_by(id: params[:id])
      unless @article
        render json: { error: 'Article not found' }, status: :not_found
      end
    end
  
    def article_params
      params.require(:article).permit(:title, :body ,:status )
    end
  end
