class UsersController < ApplicationController
  def profile
     #if the front end has a token, we send back @user
     token = request.headers['Authentication'].split(' ')[1]
     payload = decode(token)
     current_user = User.find(payload["user"])
     render json: { user: current_user }, status: :accepted
   end

   # Sign Up
   def create
     @user = User.create(user_params)
     if @user.valid?
       render json: { user: UserSerializer.new(@user) }, status: :created
     else
       byebug
       render json: { error: 'failed to create user' }, status: :not_acceptable
     end
   end

   def index
     render json: User.all
   end

   def show
     render json: User.find(params[:id])
   end

   private

   def user_params
     params.require(:user).permit(:username, :password, :password_confirmation, :bio, :avatar, :itineraries, :destinations)
   end



end
