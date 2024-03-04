class ModernHomeController < ApplicationController
  
  def index
    @articles = Article.all
    render 'modern_home/index'
  end


  def new_modern_article
    @article = Article.new
    render 'modern_home/new_modern_article'

  end
 
end
