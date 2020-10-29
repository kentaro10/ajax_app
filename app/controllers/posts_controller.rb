class PostsController < ApplicationController

  def index  # indexアクションを定義した
  end

end
class PostsController < ApplicationController

  def index  # indexアクションを定義した
    @posts = Post.all.order(id: "DESC")  # すべてのレコードを@postsに代入


  end
 
  # 削除
  # def new
  # end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index
  end

 end