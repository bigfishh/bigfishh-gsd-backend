class UsersController < ApplicationController
    before_action :authorized, only: [:persist]
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
        # byebug
        if @user.valid?
            wristband = encode_token({user_id: @user.id})
            render json: {user: UserSerializer.new(@user), token: wristband}
        else
            render json: {error: "Try again"}
        end
    end

    def login
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
          wristband = encode_token({user_id: @user.id})
          render json: {user: UserSerializer.new(@user), token: wristband}
        else
          render json: {error: "Invalid username or password"}
        end
    end

    def persist
        wristband = encode_token({user_id: @user.id})
        render json: {user: UserSerializer.new(@user), token: wristband}
      end

    private
    def user_params
        params.permit(:name, :username, :password, :bio, :img_url)
    end
end
