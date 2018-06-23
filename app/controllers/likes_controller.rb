class LikesController < ApplicationController
  before_action :set_like, only: [:show, :update, :destroy]

  # GET /likes
  def index
    @likes = Like.all

    json_response(@likes)
  end

  # GET /likes/1
  def show
    json_response(@like)
  end

  # POST /likes
  def create
    @like = Like.create!(like_params)

    json_response(@like)
  end

  # PATCH/PUT /likes/1
  def update
    @like.update(like.params)
    head :no_content
  end

  # DELETE /likes/1
  def destroy
    @like.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_like
      @like = Like.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def like_params
      params.require(:like).permit(:art, :cinema, :music)
    end
end
