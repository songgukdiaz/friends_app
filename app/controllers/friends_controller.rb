class FriendsController < ApplicationController
  
  def index
    @friends = Friend.all
  end

  def show
    @friend = Friend.find(params[:id])
  end

  def new
    @friend = Friend.new()
  end

  def create
    @friend = Friend.new(friend_params)

    if @friend.save
      redirect_to @friend
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @friend = Friend.find(params[:id])
  end

  def update
    @friend = Friend.find(params[:id])

    if @friend.update(friend_params)
      redirect_to friends_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @friend = Friend.find(params[:id])
    @friend.destroy

    redirect_to root_path, status: :see_other
  end

  def about
  end


  private
    def friend_params
      params.require(:friend).permit(:first_name, :last_name, :age, :email)
    end
end