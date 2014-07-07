class ArticlesController < ApplicationController
  before_action :set_travel_point
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = @travel_point.articles
  end

  def new
    @article = Article.new
    @article.travel_point = @travel_point
  end

  def edit
  end

  def create
    @article = Article.new(article_params)
    @article.travel_point = @travel_point

    respond_to do |format|
      if @article.save
        format.html { redirect_to travel_point_articles(@travel_point), notice: 'Article was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to travel_point_articles(@travel_point), notice: 'Article was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to travel_point_articles(@travel_point), notice: 'Article was successfully destroyed.' }
    end
  end

  private
    def set_travel_point
      @travel_point = TravelPoint.find(params[:travel_point_id])
    end

    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:point_id, :serial, :name, :content)
    end
end
