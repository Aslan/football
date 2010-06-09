class CommentsController < ApplicationController
	def index
		@post = Post.find(params[:post_id])
    # @commentable = find_commentable
    #     @comments = @commentable.comments
  end
  
  def show
    # @commentable = find_commentable
    #     @comment = Comment.find(params[:id])
  end

  def new
    # @post = Post.find(params[:post_id])
    # @comment = Comment.new
  end
  
  def create
		@commentable = find_commentable
		params[:comment].merge!(:user_id => current_user.id)
    @comment = @commentable.comments.build(params[:comment])
		@comment.parent_id = nil if @comment.ancestry.nil?
    if @comment.save
      flash[:notice] = "Successfully created comment."
			respond_to do |format|
				format.html {redirect_to :back }
				format.js
			end
    else
      flash[:error] = "No Comments?."
			respond_to do |format|
				format.html {redirect_to :back }
				format.js { render :template => 'comments/no_comment.js'}
			end
    end
  end
  
  def edit
		@post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
  end
  
  def update
		@post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    if @comment.update_attributes(params[:comment])
      flash[:notice] = "Successfully updated comment."
      redirect_to post_url(@comment.post_id)
    else
      render :action => 'edit'
    end
  end
  
  def destroy
		@post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    flash[:notice] = "Successfully destroyed comment."
    redirect_to comments_url
  end

	private

	def find_commentable
	  params.each do |name, value|
	    if name =~ /(.+)_id$/
	      return $1.classify.constantize.find(value)
	    end
	  end
	  nil
	end

end
