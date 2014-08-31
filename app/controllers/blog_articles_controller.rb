class BlogArticlesController < ApplicationController

  skip_before_filter :require_login, only: [:index, :show]
      


  def index
    @blog_articles = BlogArticle.order(created_at: :desc).where(publish_now: 'yes')
    @recent_articles = BlogArticle.order(created_at: :desc).where(publish_now: 'yes')
  end

  # GET /blog_articles/1
  # GET /blog_articles/1.json
  def show
    @blog_article = BlogArticle.find(params[:id])
  end

  # GET /blog_articles/new
  def new
    @blog_article = BlogArticle.new
  end

  # GET /blog_articles/1/edit
  def edit
    @blog_article = BlogArticle.find(params[:id])
  end
  

  # POST /blog_articles
  # POST /blog_articles.json
  def create
    @blog_article = BlogArticle.new(blog_article_params)
    @blog_article.user = current_user

    respond_to do |format|
      if @blog_article.save
        format.html { redirect_to user_path(current_user), notice: 'Blog article was successfully created.' }
        format.js {}
      else
        format.html { render :new, alert: 'there was an error' }
        format.js {}
      end
    end
  end

  # PATCH/PUT /blog_articles/1
  # PATCH/PUT /blog_articles/1.json
  def update
    @blog_article = BlogArticle.find(params[:id])
    respond_to do |format|
      if @blog_article.update(blog_article_params)
        format.html { redirect_to user_path(current_user), notice: 'Blog article was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog_article }
      else
        format.html { render :edit }
        format.json { render json: @blog_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_articles/1
  # DELETE /blog_articles/1.json
  def destroy
    @blog_article = BlogArticle.find(params[:id])
    @blog_article.destroy
    respond_to do |format|
      format.html { redirect_to user_path(current_user), notice: 'Blog article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    
    def set_user
      @blog_article = BlogArticle.find(params[:id])
    end

    def blog_article_params
      params.require(:blog_article).permit(:body, :title, :publish_now)
    end

end
