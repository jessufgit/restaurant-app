class CommentsController < ApplicationController
  def create
    @recommendation = Recommendation.find(params[:recommendation_id])
    @comment = @recommendation.comments.create(comment_params)
    redirect_to recommendations_path(@recommendation)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
