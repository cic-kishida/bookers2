class BooksController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.user_id = current_user.id
    @user.save
    redirect_to books_path
  end

  def index
      @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to books_path
  end

  # 投稿データのストロングパラメータ
  private

  def books_path
    params.require(:user).permit(:name, :introduction, :profile_image_id)
  end

end
