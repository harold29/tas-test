class LikesController < ApplicationController
  before_action :set_user, only: [:create, :show, :update, :destroy]

  # GET /likes
  def index
    @likes = Like.all

    json_response(@likes)
  end

  # GET /likes/1
  def show
    json_response(@user.like)
  end

  # POST /likes
  def create
    logger.debug @user
    @user.like = Like.create!(like_params)

    json_response(@user.like)
  end

  # PATCH/PUT /likes/1
  def update
    logger.debug @user.inspect
    @user.like.update(like_params)
    head :no_content
  end

  # DELETE /likes/1
  def destroy
    @user.like.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:user_id])
    end

    # Only allow a trusted parameter "white list" through.
    def like_params
      params.require(:like).permit(:art, :cinema, :music)
    end
end
