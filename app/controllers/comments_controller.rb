class CommentsController < ApplicationController
  layout false
  skip_before_action :verify_authenticity_token
  def new
    @comment = Comment.new
  end

  def edit
  end

  # POST /comments
  # POST /comments.json
  def create
   
      @comment = Comment.new(comment_params)
    #@comment = Comment.new(:content => params[:content] , :product_id => params[:product_id])

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @posts_path, notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

    def comment_params
      params.require(:comment).permit(:content,:product_id)
    end
end
