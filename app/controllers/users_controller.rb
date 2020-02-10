class UsersController < ApplicationController

    def index
        @users = User.all  
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: {user: UserSerializer.new(@user)}
    end

    def create
        @user = User.create(user_params)
        byebug
        if @user.valid?
            wristband = encode_token({user_id: @user.id})
            render json: {user: UserSerializer.new(@user), token: wristband}
        else
            render json: {error: "Try again"}
        end
    end

    private
    def user_params
        params.permit(:name, :username, :password, :bio, :img_url)
    end
end
