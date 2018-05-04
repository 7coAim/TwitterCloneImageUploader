class TwtextsController < ApplicationController

  before_action :set_twtext, only: [:show, :edit, :update, :destroy]
  before_action :is_login, only: [:new, :edit, :show, :destroy]

  def top
    render 'top'
  end

  def index
    @twtexts = Twtext.all
  end

  def new
    #ビューにデータを渡す(インスタンス変数を定義する)
    if params[:back]
      @twtext = Twtext.new(twtext_params)
    else
      @twtext = Twtext.new
    end
  end

  def confirm
    @twtext = Twtext.new(twtext_params)
    # バリデーション前にユーザIDを格納する
    @twtext.user_id = current_user.id
    render :new if @twtext.invalid?
  end

  def create
    @twtext = Twtext.new(twtext_params)
    @twtext.user_id = current_user.id
    if @twtext.save
      # 一覧画面へ遷移し
      redirect_to twtexts_path, notice: "新しいつぶやきを投稿しました"
    else
      # 入力フォームを再描画
      render 'new'
    end
  end

  def edit
  end

  def update
    if @twtext.update(twtext_params)
      redirect_to twtexts_path, notice: "つぶやきを編集しました"
    else
      render 'edit'
    end
  end

  def destroy
    @twtext.destroy
    redirect_to twtexts_path, notice: "つぶやきを削除しました"
  end

  def show
    @favorite = current_user.favorites.find_by(twtext_id: @twtext.id)
  end

  private

  # 許可するパラメータを指定するメソッド
  def twtext_params
    params.require(:twtext).permit(:content)
  end

  # idをキーとして値を取得するメソッド
  def set_twtext
    @twtext = Twtext.find(params[:id])
  end

  # 未ログインならログイン画面へリダイレクトさせるメソッド
  def is_login
    if !logged_in?
      redirect_to sessions_new_path, notice: "ログインが必要な機能です"
    end
  end

end
