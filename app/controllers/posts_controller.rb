class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :update, :destroy]

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
    @post=Post.find(params[:id])
  end

  # POST /posts
  # POST /posts.json
  def create
    @blog=Blog.find(params[:blog_id])
    @post=@blog.posts.build(post_params)
    @post.save
    redirect_to blog_url(@blog)
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
      redirect_to @post.user
    else
      render 'edit'
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @blog=Blog.find(params[:blog_id])
    @post=@blog.posts.find(params[:id])
    @post.destroy
    redirect_to blog_url(@blog)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:body, :blog_id)
    end
end
