class UsersController < ApplicationController
  before_action :set_user, only: [ :show, :edit, :destroy ]

  def index
   @users = User.all
    render component: 'Users', props:{ users: @users }
  end

  def show
    render component: "User", props: { user: @user }
  end

  def new
    @user = User.new
    render component: 'UserNew', props: { user: @user}
  end

  def edit
    render component: 'UserEdit', props: { user: @user}
  end

  def create
    @user = User.new(user_params)
    if @user.save 
      redirect to @user
    else
      render :new
    end
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private
  def set_user
    @user = User.find(params[:id])
  end



end
