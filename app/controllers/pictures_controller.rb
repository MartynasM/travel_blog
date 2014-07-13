class PicturesController < ApplicationController
  before_action :set_article
  before_action :set_picture, only: [:show, :edit, :update, :destroy]

  def index
    @pictures = @article.pictures.ordered
  end

  def show
  end

  def new
    @picture = Picture.new
    @picture.owner = @article
    @article.pictures.select("max(serial) as serial").first.serial.to_i + 1
  end

  def edit
  end

  def create
    @picture = Picture.new(picture_params)
    @picture.owner = @article

    respond_to do |format|
      if @picture.save
        format.html { redirect_to article_pictures_path(@article), notice: 'Picture was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @picture.update(picture_params)
        format.html { redirect_to article_pictures_path(@article), notice: 'Picture was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @picture.destroy
    respond_to do |format|
      format.html { redirect_to article_pictures_path(@article), notice: 'Picture was successfully destroyed.' }
    end
  end

  private
    def set_article
      @article = Article.find(params[:article_id])
    end

    def set_picture
      @picture = @article.pictures.where(id: params[:id]).first
    end

    def picture_params
      params.require(:picture).permit(:title, :file)
    end
end
