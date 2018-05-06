module SessionsHelper
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  # 未ログインならログイン画面へリダイレクトさせるメソッド
  def is_login
    if !logged_in?
      redirect_to sessions_new_path, notice: "ログインが必要な機能です"
    end
  end


end
