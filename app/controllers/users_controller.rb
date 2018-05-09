class UsersController < ApplicationController

  before_action :is_login, only: [:show]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # 保存に成功した場合
      session[:user_id] = @user.id
      redirect_to user_path(@user.id), notice: "ユーザ登録が完了しました"
    else
      # 保存に失敗した場合
      render 'new'
    end
  end

  def show
    # ログインユーザのユーザ情報を取得する
    @user = current_user
    # @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :image)
  end
end
