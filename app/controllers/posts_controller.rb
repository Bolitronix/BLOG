class PostsController < ApplicationController
  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to root_path, notice: "Your Post has been saved. Thank you!"
    else

      render :new, status: :unprocessable_entity
    end
  end


  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to root_path, notice: "Your Post has been updated. Thank you!"
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_path, status: :see_other
  end



  private

  def post_params
    params.require(:post).permit(:title, :body, :image) # Asegúrate de incluir aquí los atributos permitidos
  end

end
