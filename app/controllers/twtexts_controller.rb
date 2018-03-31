class TwtextsController < ApplicationController

  before_action :set_tetext, only: [:edit, :update, :destroy]

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

  def edit
  end

  def update
    if @twtext.update(twtext_params)
      redirect_to twtexts_path, notice: "つぶやきを編集しました"
    else
      render 'edit'
    end
  end

  def create
    @twtext = Twtext.new(twtext_params)
    if @twtext.save
      # 一覧画面へ遷移し
      redirect_to twtexts_path, notice: "つぶやきを投稿しました"
    else
      # 入力フォームを再描画
      render 'new'
    end
  end

  def confirm
    @twtext = Twtext.new(twtext_params)
    render :new if @twtext.invalid?
  end

  def destroy
    @twtext.destroy
    redirect_to twtexts_path, notice:"つぶやきを削除しました"
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
end
