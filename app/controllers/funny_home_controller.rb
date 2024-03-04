class FunnyHomeController < ApplicationController
  def index
    @articles = Article.all
    render 'funny_home/index'
  end

  def new_funny_article
    @article = Article.new
  end
end
