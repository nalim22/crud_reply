
class HomeController < ApplicationController
  def index
    #list 목록 보기
    @list_post=Post.all
  end

  def new
    # 작성 form
  end

  def create
   new_post = Post.new
   new_post.title = params[:title]
   new_post.editor = params[:editor]
   new_post.content = params[:content]
   new_post.save
   
   new_p = Post.new(title: params[:title], editor:params[:editor], content:params[:content])
   new_p.save
   
   redirect_to "/"
  end

  def show
    #하나 콕! 찝어서 특정 데이터 보는 곳(id번호)
    params[:p_id]
    @show_post = Post.find(params[:p_id])
    
    @show_reply =@show_post.replies
  end

  def edit
    @edit_post=Post.find(params[:p_id])
  end

  def update
    update_p=Post.find(params[:p_id])
    
    update_p.title = params[:title] 
    update_p.editor = params[:editor]
    update_p.content = params[:content]
    
    update_p.save
    redirect_to "/home/show/"+update_p.id.to_s
  end

  def destroy
    Post.find(params[:p_id]).destroy
    redirect_to "/"
  end
end
