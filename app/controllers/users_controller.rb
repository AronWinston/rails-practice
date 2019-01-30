class UsersController < ApplicationController
  def index
    @users = User.all
    
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])

    user.update(
      firstname: params[:user][:firstname],
      lastname: params[:user][:lastname],
      email: params[:user][:email],
      age: params[:user][:age],
      birthday: params[:user][:birthday]
    )

    redirect_to user_path(user)
  end

  def create
    @user = User.create(
      firstname: params[:user][:firstname],
      lastname: params[:user][:lastname],
      email: params[:user][:email],
      age: params[:user][:age],
      birthday: params[:user][:birthday]
    )

    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def destroy

    user = User.find(params[:id])

    user.destroy

    redirect_to '/'
  end

end
