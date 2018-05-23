class ComentController < ApplicationController
  def reply_create
    new_reply=Reply.new
    new_reply.editor=params[:editor]
    new_reply.content=params[:content]
    new_reply.post_id=params[:p_id]
    
    new_reply.save
    redirect_to :back
  end

  def reply_delete
    d_reply=Reply.find(params[:reply_id])
    d_reply.destroy
    redirect_to :back
  end
end
