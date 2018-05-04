class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # ログイン成功の場合
      session[:user_id] = user.id
      redirect_to user_path(user.id), notice: "ログインしました"
    else
      # ログイン失敗の場合
      flash.now[:danger] = 'ログインに失敗しました'
      render 'new'
    end
  end

  def destroy
      session.delete(:user_id)
      flash[:notice] = 'ログアウトしました'
      redirect_to new_session_path
  end

end
