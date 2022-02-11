class BooksController < ApplicationController

  def new
    @book = User.new
  end

  def create
    @book = book.new(user_params)
    @book.user_id = current_user.id
    @bookuser.save
    redirect_to books_path
  end

  def index
      @book = User.all
  end

  def show
    @book = User.find(params[:id])
  end

  def destroy
    @book = User.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  # 投稿データのストロングパラメータ
  private

  def books_path
    params.require(:book).permit(:name, :introduction, :profile_image_id)
  end

end
