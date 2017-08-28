class UsersController < ApplicationController
	before_action :find_user, only: [ :edit, :show, :update]
	before_action :authenticate_user

	def index	
		@user = User.all	
	end

	def new
		@user = User.new
	end

	def show
	end

	def create
		@user = User.new(user_params)

		if @user.save
			flash[:notice] = "Save Sucessfully!"
			redirect_to root_url
		else
			render 'new'			
		end
	end

	def edit		
	end

	def update
		if @user.update(user_params)
			flash[:notice] = "Successfully update"
			redirect_to root_url
		else
			render 'edit'
		end
	end

	def find_user
		@user = User.find_by_id(params[:id])
	end

private

	def user_params
		params.require(:user).permit( :firstname, :lastname, :email, :password)
	end
end
