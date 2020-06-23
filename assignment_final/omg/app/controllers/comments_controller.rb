class CommentsController < ApplicationController
    # def index
    #     render 'index'
    # end

    def new
        @comment = Comment.new
    end

    def create
        @member = Member.find(params[:id])
        @comment = @member.comments.create(comment_params)

        redirect_to member_path(@member)
    end

    def destroy
        @member = Member.find(params[:id]) 
        @comment = @member.comments.find(params[:cid])
        @comment.destroy
        redirect_to member_path(params[:id])
    end

    private
    def comment_params
        params.require(:comment).permit(:content)
    end
end
