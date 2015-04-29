class MessageController < ApplicationController

def new

end

def create
  @post = Post.new
  @post.image_url = params["image_url"]
  @post.title = params["title"]
  @post.contents = params["contents"]
@post.save

redirect_to "/message/#{@post.id}"

end

def edit
@post = Post.find(params[:id])

end

def update
@post = Post.find(params[:id])
  @post.image_url = params["image_url"]
  @post.title = params["title"]
  @post.contents = params["contents"]
@post.save

redirect_to "/message/#{@post.id}"
end

def destroy
@post = Post.find(params[:id])
@post.destroy


end

def index
  @posts = Post.all

end

def show
@post = Post.find(params[:id])
end



end
