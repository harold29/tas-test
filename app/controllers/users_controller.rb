class UsersController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]

    def index
        @users = User.all
        render json: @users
    end

    def show
        if stale?(last_modified: @user.updated_at, public: true)
            render json: @user
        end
    end

    def create
        @user = User.create!(user_params)
        json_response(@user, :created)
    end

    def update
        @user.update(user_params)
        head :no_content
    end

    def destroy
        @user.destroy
        head :no_content
    end

    private

    def user_params
        params.require(:user).permit(:email, :first_name, :last_name, :phone_number, :address)
    end

    def set_user
        @user = User.find(params(:email))
    end
end
