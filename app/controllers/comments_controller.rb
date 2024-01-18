class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id]) # Encuentra el post basado en el post_id de la URL
    @comment = @post.comments.new(comment_params) # Crea un nuevo comentario asociado con @post
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to root_path, notice: "Your Comment has been saved"
    else

      render :new, status: :unprocessable_entity
    end
  end


  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to root_path, notice: "Your Comment has been updated. Thank you!"
  end

  def destroy
    @omment = Comment.find(params[:id])
    @comment.destroy
    redirect_to root_path, status: :see_other
  end



  private

  def comment_params
    params.require(:comment).permit(:comentario) # Asegúrate de incluir aquí los atributos permitidos
  end

end
