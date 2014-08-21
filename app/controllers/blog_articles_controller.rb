class BlogArticlesController < ApplicationController

  before_filter :load_user
  
  def index
    @blog_articles = BlogArticle.all
  end

  # GET /blog_articles/1
  # GET /blog_articles/1.json
  def show
  end

  # GET /blog_articles/new
  def new
    @blog_article = BlogArticle.new
  end

  # GET /blog_articles/1/edit
  def edit
  end

  # POST /blog_articles
  # POST /blog_articles.json
  def create
    @blog_article = @user.blog_articles.build(blog_article_params)
    @blog_article.user = current_user

    respond_to do |format|
      if @blog_article.save
        format.html { redirect_to @blog_article, notice: 'Blog article was successfully created.' }
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

    def load_user
      @user = User.find(current_user)
    end

end
