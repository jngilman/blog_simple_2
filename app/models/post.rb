class Post < ActiveRecord::Base
  
  def index
  end

  def new
  	@post = Post.new(post_params)
	if @post.save
  	  redirect_to @post  		
  	end  
  end
  
  def post_params
  	params.require(:post).permit(:title, :content)
  end


end
