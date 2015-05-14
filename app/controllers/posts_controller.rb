class PostsController < ActionController::Base
  def new
  end

  def create
  end

  def edit
  end

  def update
    @post = Post.find(params[:id])

    @post.update!({title: params[:post][:title], body: params[:post][:body]})

    @user = User.find(@post.user_id)
    redirect_to({controller: :users, action: :portfolio, id: @user.id},  notice: "Post Saved!")
  end

  def show
    @post = Post.find(params[:id])
  end
end