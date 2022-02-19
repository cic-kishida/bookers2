class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def index
    @user = User.find(params[:id])
  end

  # 投稿データのストロングパラメータ
  private

  def books_path
    params.require(:user).permit(:name, :introduction, :profile_image_id)
  end

end
